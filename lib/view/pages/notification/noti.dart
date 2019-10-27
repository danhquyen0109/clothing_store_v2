import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotiPageState();
  }
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Thông báo",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.featured_play_list,
                // color: Colors.black,
              ),
              subtitle: Text(
                "Trạng thái mới nhất của đơn hàng của bạn,\nCập nhật kịp thời",
              ),
              title: Text("Đơn đặt hàng",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500)),
              isThreeLine: true,
              onTap: () {},
            ),
            Container(
              height: 1.0,
              color: Colors.grey[200],
            ),
            ListTile(
              leading: Icon(
                Icons.volume_up,
                // color: Colors.black,
              ),
              title: Text("Tin mới",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500)),
              // isThreeLine: true,
              onTap: () {},
            ),
            Container(
              height: 1.0,
              color: Colors.grey[200],
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_basket,
                // color: Colors.black,
              ),
              subtitle: Text(
                "Đừng bỏ lỡ các sản phẩm MỚI, nhận thông báo các chương trình khuyến mại mới!",
              ),
              isThreeLine: true,
              title: Text("Hoạt động",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500)),
              // isThreeLine: true,
              onTap: () {},
            ),
            Container(
              height: 1.0,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
