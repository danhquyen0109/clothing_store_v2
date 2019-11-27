import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';
import 'package:store_v2/view/pages/product/product.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class CategoryView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class _CategoryState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Danh mục",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Nữ",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                // text: "Nam",
                child: Text(
                  "Nam",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            womenView(),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget womenView() {
    return VerticalTabs(
      itemExtent: 71,
      selectedTabBackgroundColor: Colors.grey[50],
      tabsWidth: MediaQuery.of(context).size.width / 3.5,
      tabsElevation: 0.0,
      // tabsWidth: 120,
      unselectedTabBackgroundColor: Colors.white,
      indicatorColor: Colors.transparent,
      // tabsShadowColor: Colors.transparent,
      tabs: <Tab>[
        Tab(child: Text('#Black Friday')),
        Tab(child: Text('Hàng mới')),
        Tab(child: Text('Đầm')),
        Tab(child: Text('Quần jean')),
        Tab(child: Text('Đồ bó')),
        Tab(child: Text('Denim')),
        Tab(child: Text('Giày')),
        Tab(child: Text('Phụ kiện')),
      ],
      contents: <Widget>[
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
        verticalTab1(),
      ],
    );
  }

  Widget verticalTab1() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
      child: Container(
        // color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/gif/category/category banner.gif",
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Ưu đãi đặc biệt".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(
                        msg: "Chức năng đang xây dựng",
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                      );
                    },
                    child: Image.asset(
                      "assets/img/category/sale off.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mua theo danh mục".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(
                        msg: "Chức năng đang xây dựng",
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                      );
                    },
                    child: Image.asset(
                      "assets/img/category/cate.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget image(Product product) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 16.0),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 120,
              width: 80,
              child: Image.asset(
                product.images[0],
                fit: BoxFit.cover,
              ),
            ),
            Text(
              product.price,
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
                      product: product,
                    )));
      },
    );
  }
}
