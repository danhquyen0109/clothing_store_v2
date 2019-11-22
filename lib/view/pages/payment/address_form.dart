import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';

class AddressForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddressFormState();
  }
}

class _AddressFormState extends State<AddressForm> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController houseController = new TextEditingController();
  TextEditingController districtController = new TextEditingController();
  TextEditingController provineController = new TextEditingController();
  TextEditingController areaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            // size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Địa chỉ nhận hàng",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("*Tên người nhận"),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    fillColor: Colors.grey,
                    // labelText: "Tên người nhận",
                    // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                    // alignLabelWithHint: true,
                    // hintText: 'Nhập họ & tên người nhận',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text("*Số điện thoại"),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    fillColor: Colors.grey,
                    // labelText: "Tên người nhận",
                    // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                    // alignLabelWithHint: true,
                    // hintText: 'Nhập họ & tên người nhận',
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text("*Số nhà, tên đường"),
                TextFormField(
                  controller: houseController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300])),
                    fillColor: Colors.grey,
                    // labelText: "Tên người nhận",
                    // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                    // alignLabelWithHint: true,
                    // hintText: 'Nhập họ & tên người nhận',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            // padding: EdgeInsets.all(16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Text("*Tỉnh/ Thành phố"),
                ),
                MaterialButton(
                  child: TextFormField(
                    controller: provineController,
                    enabled: false,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      fillColor: Colors.grey,
                      // labelText: "Tên người nhận",
                      // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                      // alignLabelWithHint: true,
                      // hintText: 'Nhập họ & tên người nhận',
                    ),
                  ),
                  onPressed: () {
                    cities.sort((a, b) {
                      return a.toLowerCase().compareTo(b.toLowerCase());
                    });
                    print("Chọn tỉnh!");
                    provineController.text = cities.first;
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext builder) {
                          return listPicker(cities, provineController);
                        });
                  },
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("*Quận/ Huyện"),
                ),
                MaterialButton(
                  onPressed: () {
                    districtsHanoi.sort((a, b) {
                      return a.toLowerCase().compareTo(b.toLowerCase());
                    });
                    if (provineController.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Bạn chưa chọn Tỉnh/ Thành phố",
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                      );
                    } else {
                      print("Chọn huyện!");
                      districtController.text = districtsHanoi.first;
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext builder) {
                            return listPicker(
                                districtsHanoi, districtController);
                          });
                    }
                  },
                  child: TextFormField(
                    enabled: false,
                    controller: districtController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      fillColor: Colors.grey,
                      // labelText: "Tên người nhận",
                      // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                      // alignLabelWithHint: true,
                      // hintText: 'Nhập họ & tên người nhận',
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("*Phường/ Xã"),
                ),
                MaterialButton(
                  onPressed: () {
                    areasCauGiay.sort((a, b) {
                      return a.toLowerCase().compareTo(b.toLowerCase());
                    });
                    if (provineController.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Bạn chưa chọn Tỉnh/ Thành phố",
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                      );
                    } else {
                      if (districtController.text.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "Bạn chưa chọn Quận/ Huyện",
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                        );
                      } else {
                        print("Chọn xã!");
                        areaController.text = areasCauGiay.first;
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext builder) {
                              return listPicker(areasCauGiay, areaController);
                            });
                      }
                    }
                  },
                  child: TextFormField(
                    enabled: false,
                    controller: areaController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300])),
                      fillColor: Colors.grey,
                      // labelText: "Tên người nhận",
                      // labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                      // alignLabelWithHint: true,
                      // hintText: 'Nhập họ & tên người nhận',
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listPicker(
      List<String> list, TextEditingController textEditingController) {
    // int initIndex;
    // if (textEditingController.text.isEmpty) {
    //   initIndex = 1;
    // } else {
    //   initIndex = list.indexOf(textEditingController.text);
    // }

    return Container(
      height: 240,
      child: CupertinoPicker(
        // looping: true,
        squeeze: 1.0,
        magnification: 1,
        backgroundColor: Colors.white,
        itemExtent: 32.0,
        children: list.map((item) {
          return Text(item);
        }).toList(),
        onSelectedItemChanged: (int index) {
          setState(() {
            textEditingController.text = list[index];
          });
        },
      ),
    );
  }
}
