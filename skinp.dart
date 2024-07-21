import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:http/http.dart' as http;

import 'booknow.dart';
import 'readmore.dart';

class skinp extends StatefulWidget {
  String type;
  skinp({super.key, required this.type});

  @override
  State<skinp> createState() => _skinpState();
}

class _skinpState extends State<skinp> {
  final List<String> imgList = [
    "assets/images/pic13.jpeg",
    "assets/images/pic14.jpeg",
    "assets/images/pic15.jpeg",
    "assets/images/pic16.jpeg",
  ];
  List data = [];
  Future insert() async {
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/getTreatment.php"),
        body: {"ty": widget.type});
    var result = jsonDecode(res.body);
    setState(() {
      data.addAll(result);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    insert();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  height: 310,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 310,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {});
                      },
                    ),
                    items: imgList.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            // color: Color.fromARGB(255, 176, 219, 255),
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 200),
                    height: 560,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        width: 100,
                        height: 100,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  data[index]['images'],
                                  height: 90,
                                  width: 90,
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
                                    data[index]['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: const Color.fromARGB(
                                            255, 237, 216, 29),
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Icon(
                                        Icons.read_more_rounded,
                                        color: const Color.fromARGB(
                                            255, 164, 60, 52),
                                        size: 24,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      readmore(
                                                          img: data[index]
                                                              ['images'],
                                                          name: data[index]
                                                              ['name'],
                                                          des: data[index]
                                                              ['dicrip'],
                                                          pr: data[index]
                                                              ['price'])));
                                        },
                                        child: Text(
                                          "Read more about",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "PKR: ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            data[index]['price'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => booknow(
                                                      imge: data[index]
                                                          ['images'],
                                                      nam: data[index]['name'],
                                                      pri: data[index]
                                                          ['price'])));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 150, 197, 193),
                                          ),
                                          height: 35,
                                          width: 90,
                                          child: Center(
                                            child: Text(
                                              "Book Now",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                  top: 30,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop;
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
