import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/cart/cart_query.dart';
import 'package:store_v2/view/pages/product/product.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartState();
  }
}

class _CartState extends State<CartPage> {
  List<Product> products = [];
  double totalPrice = 0;
  int productCounter = 0;
  String freeShip = "999.000";
  String getGift = "599.000";
  AsyncMemoizer memCache = new AsyncMemoizer();
  @override
  void initState() {
    getListProducts().then((listProduct) {
      setState(() {
        products = listProduct;
      });
      products.forEach((product) {
        setState(() {
          totalPrice = totalPrice +
              double.parse(product.price) * int.parse(product.number);
          productCounter = productCounter + int.parse(product.number);
          freeShip = (999.000 - totalPrice).toStringAsFixed(3);
          getGift = (599.000 - totalPrice).toStringAsFixed(3);
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.black,
            size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Giỏ hàng",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
              (double.tryParse(freeShip) > 0)
                  ? Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                        leading:
                            Icon(Icons.local_shipping, color: Colors.grey[700]),
                        title: Text(
                          "Mua thêm $freeShip VND hoặc nhiều hơn để được hưởng ưu đãi giao hàng MIỄN PHÍ !",
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey[700]),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[700],
                          size: 20.0,
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                        leading: Icon(Icons.local_shipping,
                            color: Colors.green[500]),
                        title: Text(
                          "Hiện bạn được hưởng ưu đãi giao hàng MIỄN PHÍ !",
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.green[500]),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[500],
                          size: 20.0,
                        ),
                      ),
                    ),
              SizedBox(
                height: 8.0,
              ),
              (double.tryParse(getGift) > 0)
                  ? Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                        leading: Icon(Icons.card_giftcard, color: Colors.black),
                        title: Text(
                          "Mua thêm $getGift VND để nhận được những quà tặng HẤP DẪN !",
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                        leading:
                            Icon(Icons.card_giftcard, color: Colors.green[500]),
                        title: Text(
                          "Bạn được hưởng ưu đãi giảm giá các mặt hàng mùa thu !",
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.green[500]),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green[500],
                          size: 20.0,
                        ),
                      ),
                    ),
              SizedBox(
                height: 12.0,
              ),
            ] +
            [
              Visibility(
                visible: products.isEmpty,
                child: Container(
                  height: 300,
                  child: Center(
                    child: Text(
                      "Hiện tại giỏ hàng trống",
                      style: TextStyle(fontSize: 24.0, color: Colors.grey[500]),
                    ),
                  ),
                ),
              )
            ] +
            products.map((product) {
              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16.0),
                    height: 182,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 120,
                            height: 150,
                            child: Image.asset(
                              product.images.first,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.name,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Expanded(
                              child: Text(
                                "${product.price} VND",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
                              ),
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                DropdownButtonHideUnderline(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 4.0),
                                    height: 30,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.0,
                                            style: BorderStyle.solid,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    child: DropdownButton(
                                      items: listSize(),
                                      value: product.picked,
                                      onChanged: (size) {
                                        setState(() {
                                          product.picked = size;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(
                                        (int.tryParse(product.number) > 1)
                                            ? Icons.remove
                                            : Icons.delete,
                                        size: 16.0,
                                      ),
                                      onPressed: () {
                                        if (int.tryParse(product.number) > 1) {
                                          setState(() {
                                            int temp =
                                                int.tryParse(product.number);
                                            temp -= 1;
                                            product.number = temp.toString();
                                            totalPrice -=
                                                double.tryParse(product.price);
                                            productCounter -= 1;
                                            freeShip = (999.000 - totalPrice)
                                                .toStringAsFixed(3);
                                            getGift = (599.000 - totalPrice)
                                                .toStringAsFixed(3);
                                          });
                                        } else {
                                          setState(() {
                                            _showPopUpDelete(product, context);
                                          });
                                        }
                                      },
                                    ),
                                    Text(
                                      product.number,
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          int temp =
                                              int.tryParse(product.number);
                                          temp += 1;
                                          product.number = temp.toString();
                                          totalPrice +=
                                              double.tryParse(product.price);
                                          productCounter += 1;
                                          freeShip = (999.000 - totalPrice)
                                              .toStringAsFixed(3);
                                          getGift = (599.000 - totalPrice)
                                              .toStringAsFixed(3);
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  )
                ],
              );
            }).toList(),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8.0),
        height: 100,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text.rich(
              TextSpan(
                  text: "Tổng cộng: ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 16.0),
                  children: <TextSpan>[
                    TextSpan(
                        text: (totalPrice != 0)
                            ? "${numberToString(totalPrice)} VND"
                            : "0 VND",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0))
                  ]),
            ),
            GestureDetector(
              child: Container(
                height: 40,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Thanh toán ($productCounter)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem> listSize() {
    List<DropdownMenuItem> result = [];
    List<String> sizes = ["S", "M", "L", "XL", "XXL"];
    for (String size in sizes) {
      result.add(DropdownMenuItem(
        value: size,
        child: Text(size),
      ));
    }
    return result;
  }

  String numberToString(double price) {
    if (price >= 1000) {
      price = price / 1000;
      return price.toStringAsFixed(3) + ".000";
    }
    return price.toStringAsFixed(3);
  }

  void onPressedDelete(Product product) {
    setState(() {
      products.remove(product);
      totalPrice -= double.tryParse(product.price);
      productCounter -= 1;
      freeShip = (999.000 - totalPrice).toStringAsFixed(3);
      getGift = (599.000 - totalPrice).toStringAsFixed(3);
      deleteProduct(product.name);
    });
  }

  void _showPopUpDelete(Product product, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text("Bạn có chắc chắn muốn xoá sản phẩm này?"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Huỷ",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16.0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    onPressedDelete(product);
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Xoá",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16.0),
                ),
              ),
            ],
          );
        });
  }
}
