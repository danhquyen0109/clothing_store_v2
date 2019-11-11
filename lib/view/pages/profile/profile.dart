import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<ProfilePage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Cá nhân",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    onTap: () {
                      Fluttertoast.showToast(
                        msg: "Chức năng đang xây dựng",
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                      );
                    },
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.grey[300],
                      size: 42.0,
                    ),
                    title: Text("Đăng nhập",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Sổ địa chỉ",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                        ),
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 1.0,
                      ),
                      ListTile(
                        title: Text(
                          "Tuỳ chọn thanh toán",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                        ),
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Xoá bộ nhớ cache",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                        ),
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: "Chức năng đang xây dựng",
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                          );
                        },
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 1.0,
                      ),
                      SwitchListTile(
                        title: Text(
                          "Bật/Tắt thông báo",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7)),
                        ),
                        value: selected,
                        selected: true,
                        onChanged: (bool value) {
                          setState(() {
                            selected = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              "Phiên bản: v1.0",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}
