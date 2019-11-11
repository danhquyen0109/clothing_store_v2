import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:store_v2/presenter/cart/cart_query.dart';

class Product {
  String name;
  String price;
  String picked;
  String number;

  void setPicked(String sizeOnChoose) {
    this.picked = sizeOnChoose;
  }

  void setNumber(String numberOnChoose) {
    this.number = numberOnChoose;
  }

  List<String> images;
  List<String> size;

  Product(
      {this.name,
      this.price,
      this.images,
      this.size,
      this.picked,
      this.number});

  Map<String, dynamic> toMap() {
    Map sizeToMap = new Map();
    for (String item in this.size) {
      sizeToMap.addAll({this.size.indexOf(item).toString(): item});
    }
    return {
      "name": this.name,
      "price": this.price,
      "images": this.images[0].toString(),
      "size": json.encode(sizeToMap),
      "picked": this.picked,
      "number": this.number,
      "date": DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())
    };
  }
}

class ProductView extends StatefulWidget {
  Product product;

  ProductView({this.product});

  @override
  State<StatefulWidget> createState() {
    return _ProductViewState();
  }
}

class _ProductViewState extends State<ProductView> {
  ScrollController listViewController = new ScrollController();
  bool changeIcon = false;
  PageController imageController = new PageController();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: CircleAvatar(
          // backgroundColor: Colors.orange,
          backgroundImage:
              AssetImage(widget.product.images[0]),
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        controller: listViewController,
        children: <Widget>[
          Container(
            height: 500,
            child: Stack(
              children: <Widget>[
                PageView.builder(
                  controller: imageController,
                  onPageChanged: (int indexPage) {
                    setState(() {
                      index = indexPage + 1;
                    });
                  },
                  itemCount: widget.product.images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      widget.product.images[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Positioned(
                  bottom: 8.0,
                  right: 8.0,
                  child: Container(
                    height: 18,
                    width: 36,
                    color: Colors.grey.withOpacity(0.6),
                    child: Center(
                      child: Text(
                        "$index/${widget.product.images.length.toString()}",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0, top: 16.0),
            child: Text(
              widget.product.name,
              style: TextStyle(fontSize: 14.0, wordSpacing: 1.0),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Text(
              "${widget.product.price} VND",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kích thước",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: widget.product.size.map((size) {
                    bool chooseSize = false;
                    return Padding(
                      padding: EdgeInsets.only(right: 8.0, bottom: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            chooseSize = !chooseSize;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 30,
                          child: Center(
                              child: Text(
                            size.toUpperCase(),
                            style: TextStyle(
                                color:
                                    chooseSize ? Colors.white : Colors.black),
                          )),
                          decoration: BoxDecoration(
                              color: chooseSize ? Colors.black : Colors.white,
                              border: Border.all(color: Colors.grey[500])),
                        ),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Text(
                    "Vận chuyển",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping,
                    color: Colors.green,
                    size: 20.0,
                  ),
                  title: Text(
                    "Giao hàng miễn phí cho các đơn hàng trên 499.000 VND",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.assignment,
                    color: Colors.green,
                    size: 20.0,
                  ),
                  title: Text(
                    "Chính sách hoàn trả",
                    style: TextStyle(fontSize: 14.0),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Có thể bạn cũng thích",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 01.png", "799.000 VND"),
                    image("assets/img/tab1/hot sale 02.png", "399.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 02.png", "499.000 VND"),
                    image("assets/img/tab1/hot sale 03.png", "399.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 03.png", "499.000 VND"),
                    image("assets/img/tab1/hot sale 01.png", "399.000 VND"),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                listViewController.jumpTo(0.0);
              });
            },
            title: Icon(
              Icons.arrow_drop_up,
              size: 32.0,
            ),
            subtitle: Center(
                child: Text(
              "Đầu trang",
              style: TextStyle(fontSize: 16.0),
            )),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: !changeIcon
                  ? Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
              onPressed: () {
                setState(() {
                  changeIcon = !changeIcon;
                });
              },
            ),
            GestureDetector(
              child: Container(
                height: 38,
                width: MediaQuery.of(context).size.width / 1.2,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "THÊM VÀO GIỎ HÀNG",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.8,
                        wordSpacing: 1.5),
                  ),
                ),
              ),
              onTap: () {
                _saveToCart();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget image(String imgPath, String price) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 16.0),
        // height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 280,
              width: 175,
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              price,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  void _saveToCart() async {
    saveProduct(widget.product);
    Fluttertoast.showToast(
      msg: "Đã thêm vào giỏ hàng",
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
    Navigator.pop(context);
  }
}
