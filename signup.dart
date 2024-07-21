import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/allHome.dart';
import 'package:project/home.dart';
import 'package:project/main.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:http/http.dart' as http;

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  bool isChecked = false;

  Future insert() async {
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/register.php"),
        body: {
          "fName": firstname.text.toString(),
          "lName": lastname.text.toString(),
          "phon": phone.text.toString(),
          "pass": pass.text.toString(),
        });
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    height: 700,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              height: 50,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: TextFormField(
                                      controller: firstname,
                                      decoration: InputDecoration(
                                          hintText: "First Name",
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              height: 50,
                              width: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: TextFormField(
                                      controller: lastname,
                                      decoration: InputDecoration(
                                          hintText: "Last Name",
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                          ),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - 90,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextFormField(
                                  controller: phone,
                                  decoration: InputDecoration(
                                      hintText: "E mail / Phone no",
                                      hintStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - 90,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextFormField(
                                  controller: pass,
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - 90,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextFormField(
                                  controller: confirmpass,
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              width: 10,
                            ),
                            Text(
                              "I Agree With",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Privacy",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 164, 60, 52),
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "and",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Policy",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 164, 60, 52),
                                  fontSize: 10),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (firstname.text.isEmpty) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: "Please Enter First Name",
                                ),
                              );
                            } else if (lastname.text.isEmpty) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: "Please Enter Last Name",
                                ),
                              );
                            } else if (phone.text.isEmpty) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: "Please Enter Phone No",
                                ),
                              );
                            } else if (pass.text.isEmpty) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: "Please Enter Password",
                                ),
                              );
                            } else if (confirmpass.text.isEmpty) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: "Please Enter Confirm Password",
                                ),
                              );
                            } else {
                              insert();
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 37, 107, 164),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 130,
                            child: Center(
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Already Have An Account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => project()));
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 164, 60, 52),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
