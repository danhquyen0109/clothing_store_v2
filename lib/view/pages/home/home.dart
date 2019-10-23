import 'package:flutter/material.dart';
import 'package:store_v2/presenter/language/language_vi.dart';
import 'package:store_v2/view/pages/tabview/all_products.dart';
import 'package:store_v2/view/pages/tabview/men.dart';
import 'package:store_v2/view/pages/tabview/tab.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<HomeTab> tabs = [HomeTab(title: "Tất cả"), HomeTab(title: "Nam")];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              // controller: new TabController(length: 2, vsync: 1),
              tabs: tabs.map((HomeTab tab) {
                return Container(
                  width: size.width / 3,
                  child: Tab(
                    child: Text(
                      tab.title.toUpperCase(),
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    // text: tab.title,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
