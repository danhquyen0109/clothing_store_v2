class Address {
  String houseNumber;
  String userName;
  String phoneNumber;
  String province;
  String district;
  String ward;
  bool isDefault;

  Address(
      {this.userName,
      this.phoneNumber,
      this.houseNumber,
      this.ward,
      this.district,
      this.province,
      this.isDefault});

  String getAddress() {
    String result =
        "${this.houseNumber}, ${this.ward}, ${this.district}, ${this.province}";
    return result;
  }
}
