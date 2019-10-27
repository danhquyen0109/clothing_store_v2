import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchState();
  }
}

class _SearchState extends State<SearchPage> {
  TextEditingController searchEditController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Container(
          color: Colors.grey[100],
          child: TextField(
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              border: InputBorder.none,
                contentPadding: EdgeInsets.all(10.0),
                // border: OutlineInputBorder(),
                hintText: "Tìm kiếm"),
            controller: searchEditController,
            autofocus: true,
          ),
        ),
        actions: <Widget>[
          MaterialButton(
            child: Text(
              "Huỷ",
              style: TextStyle(fontSize: 16.0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
