import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartState();
  }
}

class _CartState extends State<CartPage> {
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
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.local_shipping, color: Colors.grey[700]),
              title: Text(
                "Mua thêm 499.000đ hoặc nhiều hơn để được hưởng ưu đãi giao hàng MIỄN PHÍ !",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[700],
                size: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.card_giftcard, color: Colors.black),
              title: Text(
                "Mua thêm 299.000đ để nhận được những quà tặng HẤP DẪN !",
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
