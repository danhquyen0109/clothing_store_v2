import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchState();
  }
}

class _SearchState extends State<SearchPage> {
  TextEditingController searchEditController = new TextEditingController();
  List<String> suggest = [];
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
            onChanged: (str) {
              setState(() {
                suggest = _autoComplete(str);
              });
            },
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
      body: ListView.builder(
        itemCount: suggest.length,
        itemBuilder: (BuildContext context, int index) {
          return MaterialButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Chức năng đang xây dựng",
                backgroundColor: Colors.black54,
                textColor: Colors.white,
              );
            },
            padding: EdgeInsets.zero,
            child: ListTile(
              title: Text(suggest[index]),
            ),
          );
        },
      ),
    );
  }

  List<String> _autoComplete(String str) {
    List<String> result = [];
    if (str.isEmpty) {
      return [];
    }
    for (int i = 0; i < suggestItems.length; i++) {
      if (suggestItems[i].toLowerCase().contains(str.toLowerCase())) {
        result.add(suggestItems[i]);
      }
    }
    result.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return result;
  }
}
