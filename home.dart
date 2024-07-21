// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project/exercisetip.dart';
import 'package:project/healthcare.dart';
import 'package:project/main.dart';
import 'package:project/moreservice.dart';
import 'package:project/products.dart';
import 'package:project/skinp.dart';
import 'package:project/tips.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List clr = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List img = [
    'assets/images/exercise1.jpeg',
    'assets/images/exercise2.jpg',
    'assets/images/exercise3.jpg',
    'assets/images/exercise4.jpg',
    'assets/images/exercise5.webp',
    'assets/images/exercise6.jpg',
    'assets/images/exercise7.jpeg',
  ];
  List txt = [
    "Chest",
    "Bicep",
    "tricep",
    "SixPack",
    "Yoga",
    "Thai",
    "Back",
  ];
  whatsapp() async {
    var contact = "+923049027185";
    var androidUrl = "whatsapp://send?phone=$contact&text=";

    try {
      await launchUrl(Uri.parse(androidUrl));
    } on Exception {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          whatsapp();
        },
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white)),
          height: 95,
          width: 95,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/watsapp.webp',
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.black12),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/pic3.jpeg',
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 135,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Advance cell care",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Get The Best Skin Treatment!",
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(222, 191, 76, 76)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => moreservice()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(222, 191, 76, 76),
                            ),
                            height: 40,
                            width: 90,
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => moreservice()));
                                },
                                child: Text(
                                  "More Services",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Treatment & services",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => skinp(type: "1")));
                            },
                            child: Image.asset(
                              'assets/images/pic1.jpeg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Procedure",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => skinp(type: "2")));
                            },
                            child: Image.asset(
                              'assets/images/pic2.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Treatment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => skinp(type: "3")));
                            },
                            child: Image.asset(
                              'assets/images/pic3.jpeg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dullness",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Treatments",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => skinp(type: "4")));
                            },
                            child: Image.asset(
                              'assets/images/pic4.jpeg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hair",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Treatments",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                "Explore More",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => healthcare()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          height: 110,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/health.jpeg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => healthcare()));
                        },
                        child: Text(
                          "Health Care",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => products()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          height: 110,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/medicine.jpeg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => products()));
                        },
                        child: Text(
                          "Oral Products",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                "Explore Life Style",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                height: 70,
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width - 120,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontFamily: 'Bobbers',
                        ),
                        child: Center(
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText('Hydrate,stress relief,'),
                              TyperAnimatedText(' sleep well, veggies,'),
                              TyperAnimatedText(' limit sugar,'),
                              TyperAnimatedText('smile!😀🌟'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tips()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 150, 197, 193),
                        ),
                        height: 40,
                        width: 80,
                        child: Center(
                            child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => tips()));
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                "Exercise Tips",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                width: MediaQuery.of(context).size.width - 20,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      exercisetip(ty: (index + 1).toString())));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: clr[index],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 2,
                          ),
                          width: 70,
                          height: 70,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                img[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        txt[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
