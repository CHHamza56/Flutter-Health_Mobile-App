import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/service1.dart';
import 'package:http/http.dart' as http;

class moreservice extends StatefulWidget {
  const moreservice({super.key});

  @override
  State<moreservice> createState() => _moreserviceState();
}

class _moreserviceState extends State<moreservice> {
  List data = [];
  Future insert() async {
    var res = await http.post(
      Uri.parse("https://apptocoder.com/MohsinAli/moreservices.php"),
    );
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
      // backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Home"),
          ],
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
                        'assets/images/moreservice.webp',
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Advance cell care",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Get The Best Skin Treatment!",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(222, 191, 76, 76)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "More Treatment & Services!",
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
            GridView.count(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.2,
                padding: EdgeInsets.symmetric(horizontal: 15),
                shrinkWrap: true,
                children: List.generate(data.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => service1(
                                  img: data[index]['images'],
                                  name: data[index]['name'],
                                  des: data[index]['discirp'],
                                  pr: data[index]['price'])));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 150, 197, 193))),
                          height: 110,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              data[index]['images'],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          data[index]['name'],
                        )
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
