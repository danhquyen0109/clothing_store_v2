import 'package:flutter/material.dart';
import 'package:store_v2/view/pages/tabview/all_products.dart';
import 'package:store_v2/view/pages/tabview/children.dart';
import 'package:store_v2/view/pages/tabview/hot.dart';
import 'package:store_v2/view/pages/tabview/men.dart';
import 'package:store_v2/view/pages/tabview/tab.dart';
import 'package:store_v2/view/pages/tabview/women.dart';

List<HomeTab> tabs = [
  HomeTab(title: "Tất cả"),
  HomeTab(title: "Nam"),
  HomeTab(title: "Nữ"),
  HomeTab(title: "Trẻ em"),
  HomeTab(title: "Hot")
];
List<Widget> tabViews = [AllProducts(), Men(), Women(), Children(), Hot()];

List<BottomNavigationBarItem> bottomItems = [
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home,
      // color: Colors.black,
    ),
    title: Text(
      'Mua sắm',
      // style: TextStyle(color: Colors.black),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.category,
      // color: Colors.black,
    ),
    title: Text(
      'Danh mục',
      // style: TextStyle(color: Colors.black),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.search,
      // color: Colors.black,
    ),
    title: Text(
      'Tìm kiếm',
      // style: TextStyle(color: Colors.black),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.notifications_none,
      // color: Colors.black,
    ),
    title: Text(
      'Thông báo',
      // style: TextStyle(color: Colors.black),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person,
      // color: Colors.black,
    ),
    title: Text(
      'Cá nhân',
      // style: TextStyle(color: Colors.black),
    ),
  ),
];
