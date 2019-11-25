import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/cart/cart_query.dart';
import 'package:store_v2/view/pages/payment/address.dart';
import 'package:store_v2/view/pages/product/product.dart';

class PaymentConfirm extends StatefulWidget {
  Address address;
  double totalPrice;
  PaymentConfirm({
    this.address,
    this.totalPrice,
  });
  @override
  State<StatefulWidget> createState() {
    return _PaymentConfirmState();
  }
}

class _PaymentConfirmState extends State<PaymentConfirm> {
  AsyncMemoizer memCache = new AsyncMemoizer();
  List<Product> products = [];
  @override
  void initState() {
    getListProducts().then((listProducts) {
      products = listProducts;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Xác nhận",
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Địa chỉ người nhận",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.address.userName,
                  style: TextStyle(
                      // fontSize: 16.0,
                      ),
                ),
                Text(
                  widget.address.phoneNumber,
                  style: TextStyle(
                    color: Colors.grey,
                    // fontSize: 16.0,
                  ),
                ),
                Text(
                  widget.address.getAddress(),
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.grey,
                    // fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Hình thức giao hàng",
                // style: TextStyle(fontSize: 18.0, letterSpacing: 0.5),
              ),
              subtitle: Text(
                "Giao hàng nhanh (Giao vào Thứ ba, 24/12)",
                style: TextStyle(
                  color: Colors.grey,
                  // fontSize: 16.0,
                ),
              ),
              onTap: null,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Hình thức thanh toán",
                // style: TextStyle(fontSize: 18.0, letterSpacing: 0.5),
              ),
              subtitle: Text(
                "Thanh toán tiền mặt khi nhận hàng",
                style: TextStyle(
                  color: Colors.grey,
                  // fontSize: 16.0,
                ),
              ),
              onTap: null,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                    ListTile(
                      title: Text("Đơn hàng"),
                    ),
                    Container(
                      height: 0.5,
                      color: Colors.grey[300],
                    ),
                  ] +
                  products.map((product) {
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 182,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 120,
                                height: 150,
                                child: Image.asset(
                                  product.images.first,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                        text: product.name,
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 16.0,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: "\nSize: ${product.picked}")
                                        ]),
                                  ),
                                  Text(product.price + " ₫ x " + product.number)
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 0.5,
                          color: Colors.grey[300],
                        ),
                      ],
                    );
                  }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: null,
                    title: Text(
                      "Tạm tính",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Text(numberToString(widget.totalPrice) + "₫"),
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    onTap: null,
                    title: Text(
                      "Phí vận chuyển",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Text("15.000₫"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 130,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey[50],
              height: 8.0,
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Thành tiền",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(numberToString(widget.totalPrice + 15) + "₫"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: GestureDetector(
                child: Container(
                  height: 40,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Xác nhận",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Fluttertoast.showToast(
                    msg: "Đặt hàng thành công!",
                    backgroundColor: Colors.black54,
                    textColor: Colors.white,
                  );
                  Navigator.popAndPushNamed(context, "/home");
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String numberToString(double price) {
    if (price >= 1000) {
      price = price / 1000;
      return price.toStringAsFixed(3) + ".000";
    }
    return price.toStringAsFixed(3);
  }
}
