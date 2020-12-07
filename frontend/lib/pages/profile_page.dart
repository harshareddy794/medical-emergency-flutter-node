import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isEditingNameText = false;
  bool _isEditingEmailText = false;
  bool _isEditingPhoneNumber = false;
  bool _isEditingAddressText = false;
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _addressController;
  String name = "John Doe";
  String email = "John.doe@gmail.com";
  String phone = "9999999999";
  String address = "15, Yemen road, Yemen";

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: name);
    _emailController = TextEditingController(text: email);
    _phoneController = TextEditingController(text: phone);
    _addressController = TextEditingController(text: address);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  Widget _editNameTextField(double deviceWidth) {
    if (_isEditingNameText)
      return Container(
        width: deviceWidth,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
          ),
          onSubmitted: (newValue) {
            setState(() {
              name = newValue;
              _isEditingNameText = false;
            });
          },
          autofocus: true,
          controller: _nameController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingNameText = true;
          });
        },
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(
              bottom: 3, left: 4 // space between underline and text
              ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black, // Text colour here // Underline width
          ))),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ));
  }

  Widget _editEmailTextField(double deviceWidth) {
    if (_isEditingEmailText)
      return Container(
        width: deviceWidth,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
          ),
          onSubmitted: (newValue) {
            setState(() {
              email = newValue;
              _isEditingEmailText = false;
            });
          },
          autofocus: true,
          controller: _emailController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingEmailText = true;
          });
        },
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(
              bottom: 3, left: 4 // space between underline and text
              ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black, // Text colour here // Underline width
          ))),
          child: Text(
            email,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ));
  }

  Widget _editPhoneTextField(double deviceWidth) {
    if (_isEditingPhoneNumber)
      return Container(
        width: deviceWidth,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
          ),
          onSubmitted: (newValue) {
            setState(() {
              phone = newValue;
              _isEditingPhoneNumber = false;
            });
          },
          autofocus: true,
          controller: _phoneController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingPhoneNumber = true;
          });
        },
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(
              bottom: 3, left: 4 // space between underline and text
              ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black, // Text colour here // Underline width
          ))),
          child: Text(
            phone,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ));
  }

  Widget _editAddressTextField(double deviceWidth) {
    if (_isEditingAddressText)
      return Container(
        width: deviceWidth,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
          ),
          onSubmitted: (newValue) {
            setState(() {
              address = newValue;
              _isEditingAddressText = false;
            });
          },
          autofocus: true,
          controller: _addressController,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isEditingAddressText = true;
          });
        },
        child: Container(
          width: deviceWidth,
          padding: EdgeInsets.only(
              bottom: 3, left: 4 // space between underline and text
              ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black, // Text colour here // Underline width
          ))),
          child: Text(
            address,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ));
  }

  Widget _saveButton() {
    return SizedBox(
      width: 100.0,
      child: RaisedButton(
          onPressed: () => print("Information Updated"),
          color: Colors.cyan.shade200,
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Text(
            "Save",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _cancelButton() {
    return SizedBox(
      width: 100.0,
      child: RaisedButton(
          onPressed: () => print("Cancelled"),
          color: Colors.cyan.shade200,
          elevation: 10.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Text(
            "Cancel",
            style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget recentPurchases() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int i) => Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6.0,
            color: Colors.grey.shade200,
            child: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/med.svg'),
                  Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget frequentlyContacted() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int i) => Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6.0,
            color: Colors.grey.shade200,
            child: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/doc.svg'),
                  Text(
                    "Dr. Sharma",
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget hospitals() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int i) => Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6.0,
            color: Colors.grey.shade200,
            child: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/hospital.svg'),
                  Text(
                    "General Hospital",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Roboto", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE37C54),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Roboto",
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.red.shade100,
                      child: Icon(
                        Icons.person,
                        color: Colors.orange,
                        size: 60.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight / 25, left: deviceWidth / 10),
                      child: Row(
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: deviceWidth / 4.6,
                          ),
                          _editNameTextField(deviceWidth / 2),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight / 25, left: deviceWidth / 10),
                      child: Row(
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: deviceWidth / 4.6,
                          ),
                          _editEmailTextField(deviceWidth / 2),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight / 25, left: deviceWidth / 10),
                      child: Row(
                        children: [
                          Text(
                            "Phone",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: deviceWidth / 5,
                          ),
                          _editPhoneTextField(deviceWidth / 2),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight / 25, left: deviceWidth / 10),
                      child: Row(
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: deviceWidth / 6.2,
                          ),
                          _editAddressTextField(deviceWidth / 2),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: deviceHeight / 25, left: deviceWidth / 7),
                      child: Row(
                        children: [
                          _saveButton(),
                          SizedBox(
                            width: deviceWidth / 5,
                          ),
                          _cancelButton()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Container(
                color: Color(0xFFFFE6E6),
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: deviceWidth / 2),
                      child: Text(
                        "Recent Purchases",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: recentPurchases(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: deviceWidth / 2.5, top: 16.0),
                      child: Text(
                        "Frequently Contacted",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 12.0, right: deviceWidth / 1.4),
                      child: Text(
                        "Doctors",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: frequentlyContacted(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: deviceWidth / 1.5, top: 16.0),
                      child: Text(
                        "Hospitals",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 25.0),
                      child: hospitals(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
