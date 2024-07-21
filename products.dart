import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  final List<String> imgList = [
    "assets/images/p1 (1).jpeg",
    "assets/images/p1 (2).jpeg",
    "assets/images/p1 (3).jpeg",
    "assets/images/p1 (4).jpeg",
    "assets/images/p1 (5).jpeg",
    "assets/images/p1 (6).jpeg",
    "assets/images/p1 (7).jpeg",
  ];
  List txt = [
    "BRIGHTNING SERUM",
    "ANTI ACNE SERUM",
    "NIACINAMIDE SERUM",
    "HYPERPIGMENTATION SERUM",
    "FACE IT FACE WASH",
    "FACE IT SUNSCREEN CREAM",
    "FACE IT MOISTURIZING CREAM",
  ];
  List tyt = [
    "Rs.2,200.00",
    "Rs.1,500.00",
    "Rs.2,200.00",
    "Rs.2,200.00",
    "Rs.1,800.00",
    "Rs.1,950.00",
    "Rs.2,050.00",
  ];
  whatsapp(String s) async {
    var contact = "+923049027185";
    var androidUrl = "whatsapp://send?phone=$contact&s=";

    try {
      await launchUrl(Uri.parse(androidUrl));
    } on Exception {}
  }

  int ind = 0;
  final GlobalKey<ScaffoldState> _sKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Products"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 150, 197, 193),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 800,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            ind = index;
                          });
                        },
                      ),
                      items: imgList.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                Container(
                                  height: 400,
                                  // color: Color.fromARGB(255, 176, 219, 255),
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        txt[ind],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(tyt[ind],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          whatsapp("");
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black12),
                                          height: 60,
                                          width: 120,
                                          child: Center(
                                              child: Text(
                                            "Place Order",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
