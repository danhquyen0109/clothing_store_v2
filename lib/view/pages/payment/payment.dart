import 'package:flutter/material.dart';
import 'package:store_v2/view/pages/payment/address.dart';
import 'package:store_v2/view/pages/payment/payment_confirm.dart';

class PaymentView extends StatefulWidget {
  Address address;
  double totalPrice;
  PaymentView({
    this.address,
    this.totalPrice,
  });
  @override
  State<StatefulWidget> createState() {
    return _PaymentState();
  }
}

class _PaymentState extends State<PaymentView> {
  bool fastOnChoose = false;
  bool standardOnChoose = false;
  bool atmChoose = false;
  bool codChoose = false;
  bool walletChoose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Thanh toán",
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  // color: Colors.black12,
                  child: ListTile(
                    title: Text(
                      "Chọn hình thức giao hàng",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    onTap: null,
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Checkbox(
                    checkColor: Colors.lightGreen,
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        fastOnChoose = value;
                        if (value) standardOnChoose = false;
                      });
                    },
                    value: fastOnChoose,
                  ),
                  // isThreeLine: true,
                  title: Text(
                    "Giao vào Thứ ba, 24/12",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                        text: "15.000 ₫ ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Giao hàng nhanh",
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Checkbox(
                    checkColor: Colors.lightGreen,
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        if (value) fastOnChoose = false;
                        standardOnChoose = value;
                      });
                    },
                    value: standardOnChoose,
                  ),
                  // isThreeLine: true,
                  title: Text(
                    "Giao vào Thứ tư, 25/12",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: RichText(
                    text: TextSpan(
                        text: "12.000 ₫ ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Giao hàng tiêu chuẩn",
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                ),
                // Container(
                //   height: 1.0,
                //   color: Colors.grey[300],
                // ),
                // SizedBox(
                //   height: 8.0,
                // )
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Chọn hình thức thanh toán",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  onTap: null,
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Checkbox(
                    checkColor: Colors.lightGreen,
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        if (value) {
                          atmChoose = false;
                          walletChoose = false;
                        }
                        codChoose = value;
                      });
                    },
                    value: codChoose,
                  ),
                  title: Text("Thanh toán tiền mặt khi nhận hàng"),
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Checkbox(
                    checkColor: Colors.lightGreen,
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        if (value) {
                          codChoose = false;
                          walletChoose = false;
                        }
                        atmChoose = value;
                      });
                    },
                    value: atmChoose,
                  ),
                  title: Text("Thẻ ATM nội địa/Internet Banking"),
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Checkbox(
                    checkColor: Colors.lightGreen,
                    activeColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        if (value) {
                          atmChoose = false;
                          codChoose = false;
                        }
                        walletChoose = value;
                      });
                    },
                    value: walletChoose,
                  ),
                  title: Text("Thanh toán bằng ví điện tử"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Opacity(
                opacity: 0.5,
                child: Checkbox(
                  checkColor: Colors.lightGreen,
                  activeColor: Colors.white,
                  onChanged: (bool value) {},
                  value: false,
                ),
              ),
              title: Text(
                "Yêu cầu hoá đơn.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 24.0,
              right: 16.0,
              // bottom: 32.0,
            ),
            child: GestureDetector(
              child: Container(
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Tiếp tục",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentConfirm(
                              address: widget.address,
                              totalPrice: widget.totalPrice,
                            )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
