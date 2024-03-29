import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_v2/presenter/language/language_vi.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';
import 'package:store_v2/view/pages/cart/cart.dart';
import 'package:store_v2/view/pages/categories/categories.dart';
import 'package:store_v2/view/pages/notification/noti.dart';
import 'package:store_v2/view/pages/profile/profile.dart';
import 'package:store_v2/view/pages/search/search.dart';
import 'package:store_v2/view/pages/tabview/tab.dart';
import 'package:store_v2/view/widgets/cart_bloc.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    int totalCount = 0;
    if (bloc.cart.length > 0) {
      totalCount = bloc.cart.values.reduce((a, b) => a + b);
    }
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              appName.toUpperCase(),
              style: TextStyle(letterSpacing: 3.2, color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotiPage()));
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                child: Stack(
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                    new Positioned(
                      right: 2.0,
                      top: 2.0,
                      child: new Stack(
                        children: <Widget>[
                          new Icon(Icons.brightness_1,
                              size: 20.0, color: Colors.redAccent),
                          new Positioned(
                            top: 3.0,
                            right: 6,
                            child: new Center(
                              child: new Text(
                                '$totalCount',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // IconButton(
              //   icon: Icon(
              //     Icons.shopping_cart,
              //     color: Colors.black,
              //   ),
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => CartPage()));
              //   },
              // ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.black,
              // isScrollable: true,
              // controller: new TabController(length: 2, vsync: 1),
              tabs: tabs.map((HomeTab tab) {
                return Tab(
                  child: Text(
                    tab.title.toUpperCase(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                  // text: tab.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: tabViews,
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey[500],
            showUnselectedLabels: true,
            unselectedFontSize: 12.0,
            selectedItemColor: Colors.black,
            selectedFontSize: 12.0,
            items: bottomItems,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              switch (index) {
                case 0:
                  break;
                case 1:
                  setState(() {
                    _selectedIndex = 0;
                    // chuyển tới trang danh mục
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryView()));
                  });
                  break;
                case 2:
                  setState(() {
                    _selectedIndex = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  });
                  break;
                case 3:
                  setState(() {
                    _selectedIndex = 0;
                    // chuyển tới trang hàng mới
                  });
                  break;
                case 4:
                  setState(() {
                    _selectedIndex = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  });
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
