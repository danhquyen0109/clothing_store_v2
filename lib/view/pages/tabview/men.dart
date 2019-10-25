import 'package:flutter/material.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';

class Men extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenState();
  }
}

class _MenState extends State<Men> {
  @override
  Widget build(BuildContext context) {
    products.add(Container(
      color: Colors.white,
      height: 100,
      width: 16,
    ));
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 1.0,
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
              "assets/img/tab2/new season.png",
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
                  colors: [Colors.orange, Colors.yellow],
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
                  height: 20.0,
                ),
                Text(
                  "Cửa hàng theo thể loại".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      fontFamily: "Century",
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
                              "assets/img/tab2/hoodie.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Hoodie và Áo nỉ".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab2/top.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Áo".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab2/bottom.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Quần và Giày".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
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
                              "assets/img/tab2/jacket.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Áo khoác".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab2/denim.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Denim".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Image.asset(
                              "assets/img/tab2/two piece.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Bộ hai mảnh".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            // decoration: TextDecoration.underline
                          ),
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
            height: 16.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "SALE MÙA NÀY",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.0,
                            fontFamily: "Century",
                            wordSpacing: 2.0),
                      ),
                      FlatButton(
                        child: Text(
                          "Xem thêm",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    shrinkWrap: true,
                    children: products,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/img/tab2/shoes style.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/img/tab2/trending.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            color: Colors.white,
            height: 32.0,
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
                  "- Mùa thu này -".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      wordSpacing: 2.0),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab2/jacket.png", "499.000 VND"),
                    image("assets/img/tab2/autumn 1.png", "399.000 VND"),
                    image("assets/img/tab2/autumn 3.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab2/autumn 2.png", "499.000 VND"),
                    image("assets/img/tab2/autumn 1.png", "399.000 VND"),
                    image("assets/img/tab2/jacket.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab2/autumn 3.png", "499.000 VND"),
                    image("assets/img/tab2/autumn 1.png", "399.000 VND"),
                    image("assets/img/tab2/autumn 2.png", "799.000 VND"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    image("assets/img/tab2/autumn 1.png", "499.000 VND"),
                    image("assets/img/tab2/jacket.png", "399.000 VND"),
                    image("assets/img/tab2/autumn 2.png", "799.000 VND"),
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
      onTap: () {},
    );
  }

  List<Widget> products = saleItems.map((item) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: GestureDetector(
        onTap: () {
          print("Cúc cu");
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  item["image"].toString(),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 0.0,
                  child: Container(
                    child: Center(
                        child: Text(
                      "SALE",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    )),
                    height: 16.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              item["newPrice"].toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                  fontSize: 13.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              item["oldPrice"].toString(),
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
      ),
    );
  }).toList();
}
