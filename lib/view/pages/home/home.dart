import 'package:flutter/material.dart';
import 'package:store_v2/presenter/language/language_vi.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';
import 'package:store_v2/view/pages/tabview/tab.dart';

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
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
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
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
