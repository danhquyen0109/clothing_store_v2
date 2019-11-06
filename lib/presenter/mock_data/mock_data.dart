import 'package:flutter/material.dart';
import 'package:store_v2/view/pages/product/product.dart';
import 'package:store_v2/view/pages/tabview/children.dart';
import 'package:store_v2/view/pages/tabview/hot.dart';
import 'package:store_v2/view/pages/tabview/men.dart';
import 'package:store_v2/view/pages/tabview/tab.dart';
import 'package:store_v2/view/pages/tabview/women.dart';

List<HomeTab> tabs = [
  HomeTab(title: "Nữ"),
  HomeTab(title: "Nam"),
  HomeTab(title: "Trẻ em"),
  HomeTab(title: "Hot")
];
List<Widget> tabViews = [Women(), Men(), Children(), Hot()];

List saleItems = [
  {
    "image": "assets/img/tab2/sale/sale 1.png",
    "oldPrice": "278.000",
    "newPrice": '113.000'
  },
  {
    "image": "assets/img/tab2/sale/sale 2.png",
    "oldPrice": "324.000",
    "newPrice": "150.000"
  },
  {
    "image": "assets/img/tab2/sale/sale 3.png",
    "oldPrice": "335.000",
    "newPrice": "225.000"
  },
  {
    "image": "assets/img/tab2/sale/denim.png",
    "oldPrice": "578.000",
    "newPrice": "450.000"
  },
  {
    "image": "assets/img/tab2/sale/sale 1.png",
    "oldPrice": "278.000",
    "newPrice": "113.000"
  },
  {
    "image": "assets/img/tab2/sale/sale 2.png",
    "oldPrice": "324.000",
    "newPrice": "150.000"
  },
];

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
      Icons.fiber_new,
      // color: Colors.black,
    ),
    title: Text(
      'Hàng mới',
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

Product exampleProduct = new Product(
    name: "Đầm Split Thigh Màu Đen Sexy",
    images: [
      "assets/img/mockup_product/product 1.png",
      "assets/img/mockup_product/product 2.png",
      "assets/img/mockup_product/product 3.png",
      "assets/img/mockup_product/product 4.png",
      "assets/img/mockup_product/product 5.png"
    ],
    price: "299.000",
    size: ["S","M", "L", "XL", "XXL"]);

List<String> suggestItems = [
  "Áo phông",
  "Áo khoác",
  "Áo nỉ",
  "Áo hoodie",
  "Áo denim",
  "Áo bó sát",
  "Quần jean",
  "Quần sooc",
  "Quần lửng",
  "Quần đùi",
  "Quần tất",
  "Quần khaki",
  "Quần Âu",
  "Giày thể thao",
  "Giày da",
  "Bốt",
  "Cao gót",
  "Dép xỏ ngón",
  "Dép Sandal"
];
