import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_v2/presenter/mock_data/mock_data.dart';
import 'package:store_v2/view/pages/payment/address.dart';
import 'package:store_v2/view/pages/payment/payment.dart';

class AddressForm extends StatefulWidget {
  double totalPrice;
  AddressForm({this.totalPrice});
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
  bool isCheck = false;
  Address address = new Address();
  bool showError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
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
            height: 16.0,
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
                    errorText: showError ? "Không được bỏ trống!" : null,
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
                    errorText: showError ? "Không được bỏ trống!" : null,
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
                    errorText: showError ? "Không được bỏ trống!" : null,
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
            height: 16.0,
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
                      errorText: showError ? "Không được bỏ trống!" : null,
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
                      errorText: showError ? "Không được bỏ trống!" : null,
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
                      errorText: showError ? "Không được bỏ trống!" : null,
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
          ),
          SizedBox(
            height: 16.0,
          ),
          // Container(
          //   color: Colors.white,
          //   child: SwitchListTile(
          //     title: Text(
          //       "Đặt làm địa chỉ mặc định",
          //       style: TextStyle(color: Colors.black.withOpacity(0.7)),
          //     ),
          //     activeColor: Colors.lightGreen,
          //     value: isCheck,
          //     selected: true,
          //     onChanged: (bool value) {
          //       setState(() {
          //         isCheck = value;
          //       });
          //     },
          //   ),
          // ),
          Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {
                setState(() {
                  isCheck = !isCheck;
                });
              },
              title: Text("Đặt làm địa chỉ mặc định"),
              trailing: CupertinoSwitch(
                activeColor: Colors.black87,
                onChanged: (bool value) {
                  setState(() {
                    isCheck = value;
                  });
                },
                value: isCheck,
              ),
            ),
          ),
          // SizedBox(
          //   height: 16.0,
          // ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 24.0, right: 16.0, bottom: 32.0),
            child: GestureDetector(
              child: Container(
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Giao đến địa chỉ này",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              onTap: () {
                address = new Address(
                  userName: nameController.text,
                  phoneNumber: phoneController.text,
                  houseNumber: houseController.text,
                  ward: areaController.text,
                  district: districtController.text,
                  province: provineController.text,
                  isDefault: isCheck,
                );
                if (nameController.text.isEmpty ||
                    phoneController.text.isEmpty ||
                    houseController.text.isEmpty ||
                    areaController.text.isEmpty ||
                    districtController.text.isEmpty ||
                    provineController.text.isEmpty) {
                  // Fluttertoast.showToast(
                  //   msg: "Không được bỏ trống các trường trên",
                  //   backgroundColor: Colors.black54,
                  //   textColor: Colors.white,
                  // );
                  setState(() {
                    showError = true;
                  });
                } else {
                  showError = false;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentView(
                                address: address,
                                totalPrice: widget.totalPrice,
                              )));
                }
              },
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
