import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AllProductsState();
  }
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 1.0,
          ),
          GestureDetector(
            child: Container(
              height: 40,
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Colors.indigo, Colors.blue],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1, 0.0),
                    stops: [0.0, 1.2],
                    tileMode: TileMode.clamp),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 4.0,
                  ),
                  Expanded(
                    child: Text(
                      "Miễn Phí Vận Chuyển".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "*Cho đơn hàng từ 499k".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {},
          ),
          Container(
            height: 40,
            color: Colors.grey[350],
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.local_shipping),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Thanh toán".toUpperCase(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Khi nhận hàng".toUpperCase(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.black87,
                    height: 30,
                    width: 1,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.school),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Giảm 15%".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600)),
                          Text(
                            "Cho học sinh".toUpperCase(),
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            // color: Colors.amber,
            // height: 300,
            child: Image.asset(
              "assets/img/tab1/happy_october.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            height: 80,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1, 0.0),
                  stops: [0.0, 1.2],
                  tileMode: TileMode.clamp),
            ),
            child: Center(
              child: Text(
                "Các chương trình khuyến mại".toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    wordSpacing: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
