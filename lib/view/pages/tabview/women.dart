import 'package:flutter/material.dart';
import 'package:store_v2/view/pages/product/product.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';

class Women extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WomenState();
  }
}

class _WomenState extends State<Women> {
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
          SizedBox(
            height: 4.0,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Mua theo trường hợp".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.0,
                      fontFamily: "Times New Roman",
                      wordSpacing: 2.0),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab1/summer.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Mùa hè".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab1/office.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Văn Phòng".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab1/sport.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Thể thao".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DANH MỤC ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                        // decorationStyle: TextDecorationStyle.double,
                        // decoration: TextDecoration.underline
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 4.0, right: 4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.black),
                        child: Text(
                          "HOT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2.0,
                            wordSpacing: 2.0,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  color: Colors.black,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      category("váy đầm >", Colors.blue[300]),
                      category("Áo sơ mi nữ >", Colors.blue[300])
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      category("Áo thun>", Colors.blue[500]),
                      category("Quần >", Colors.blue[500])
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      category("Denim >", Colors.blue[300]),
                      category("size lớn >", Colors.blue[300])
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      category("Áo liền quần >", Colors.blue[500]),
                      category("Phụ kiện >", Colors.blue[500])
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          GestureDetector(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/img/tab1/new.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
              color: Colors.white,
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/img/tab1/sale.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            onTap: () {},
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Bán chạy".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.0,
                      fontFamily: "Times New Roman",
                      wordSpacing: 2.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Icon(
                  Icons.ac_unit,
                  size: 16.0,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/mockup_product/product 1.png",
                        "299.000 VND"),
                    image("assets/img/tab1/hot sale 02.png", "399.000 VND"),
                    image("assets/img/tab1/hot sale 03.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 02.png", "499.000 VND"),
                    image("assets/img/tab1/hot sale 03.png", "399.000 VND"),
                    image("assets/img/tab1/hot sale 01.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 03.png", "499.000 VND"),
                    image("assets/img/tab1/hot sale 01.png", "399.000 VND"),
                    image("assets/img/tab1/hot sale 02.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab1/hot sale 03.png", "499.000 VND"),
                    image("assets/img/tab1/hot sale 02.png", "399.000 VND"),
                    image("assets/img/tab1/hot sale 01.png", "799.000 VND"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Thông Tin Vận Chuyển".toUpperCase(),
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14.0,
            ),
          ),
          ListTile(
            title: Text(
              "Thanh toán khi nhận hàng".toUpperCase(),
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14.0,
            ),
          ),
          ListTile(
            title: Text(
              "Đổi trả trong 7 ngày".toUpperCase(),
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget image(String imgPath, String price) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 16.0),
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 180,
              width: 120,
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
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
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductView(
                      product: exampleProduct,
                    )));
      },
    );
  }

  Widget category(String title, Color color) {
    return GestureDetector(
      child: Container(
        width: (MediaQuery.of(context).size.width - 24) / 2,
        height: 60,
        color: color,
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
