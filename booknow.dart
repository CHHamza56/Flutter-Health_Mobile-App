// ignore_for_file: unused_import, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:project/bknow.dart';
import 'package:project/cashnow.dart';
import 'package:project/main.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:http/http.dart' as http;

class booknow extends StatefulWidget {
  String imge;
  String nam;
  String pri;
  booknow(
      {super.key, required this.imge, required this.nam, required this.pri});
  @override
  State<booknow> createState() => _booknowState();
}

class _booknowState extends State<booknow> {
  TextEditingController phone = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  bool isChecked = false;

  final List<String> items = [
    'pakistan',
    'UK',
    'Canada',
    'Turkey',
  ];
  String selectedValue = 'pakistan';

  final List<String> items2 = [
    'sahiwal',
    'Lahore',
    'Karachi',
    'Islamabad',
    'GujranWala',
    'Rawalpindi',
  ];
  Future insert() async {
    setState(() {});

    var res = await http
        .post(Uri.parse("https://apptocoder.com/MohsinAli/booknow.php"), body: {
      "fName": fName.text.toString(),
      "lName": lName.text.toString(),
      "address": address.text.toString(),
    });
    var response = jsonDecode(res.body);
    print(response);
    Navigator.pop(context);
    setState(() {});
    print(response);
    if (response['Success'] == 'true') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => cashnow()),
      );
    } else {
      print("failed");
    }
  }

  String selectedValue2 = 'sahiwal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 78),
              child: Text("Profile"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "contact",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: phone,
                    decoration: InputDecoration(
                        hintText: "Email or Mobile Phone No",
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Email me with news and offers",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "Book Now",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 60,
              width: MediaQuery.of(context).size.width - 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(),
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/flag.png',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Country",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "Pakistan is your current country",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: fName,
                      decoration: InputDecoration(
                          hintText: "First Name", border: InputBorder.none),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: lName,
                      decoration: InputDecoration(
                          hintText: "Last Name", border: InputBorder.none),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: address,
                      decoration: InputDecoration(
                          hintText: "Adress", border: InputBorder.none),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 20,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items2
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue2,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue2 = value.toString();
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                height: 50,
                width: MediaQuery.of(context).size.width - 230,
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (phone.text.isEmpty) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(
                                message: "Please Enter Phone No",
                              ),
                            );
                          } else if (fName.text.isEmpty) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(
                                message: "Please Enter First Name",
                              ),
                            );
                          } else if (lName.text.isEmpty) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(
                                message: "Please Enter Last Name",
                              ),
                            );
                          } else if (address.text.isEmpty) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(
                                message: "Please Enter Your Address",
                              ),
                            );
                          } else {
                            insert();
                          }
                        },
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
