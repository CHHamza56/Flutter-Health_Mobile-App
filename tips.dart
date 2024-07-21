import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'clickmore.dart';

class tips extends StatefulWidget {
  const tips({super.key});

  @override
  State<tips> createState() => _tipsState();
}

class _tipsState extends State<tips> {
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
    'assets/images/tip1.webp',
    'assets/images/tip2.jpeg',
    'assets/images/tip3.jpeg',
    'assets/images/tip4.jpeg',
    'assets/images/tip5.jpeg',
    'assets/images/tip6.jpeg',
    'assets/images/tip7.jpg',
  ];
  List txt = [
    "Tip 1",
    "Tip 2",
    "Tip 3",
    "Tip 4",
    "Tip 5",
    "Tip 6",
    "Tip 7",
  ];

  List subtitle = [
    "Daily Brush",
    "Eat Mindfull",
    "Stay Hydrated",
    "Regular Exercise",
    "Indulge In Sports",
    "Skin Care",
    "Sleep Well",
  ];
  List data = [];
  Future insert() async {
    var res = await http.post(
      Uri.parse("https://apptocoder.com/MohsinAli/healthtips.php"),
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
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Home"),
            Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 670,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: clr[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
                  width: 90,
                  height: 90,
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100000),
                          child: Image.network(
                            data[index]['images'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        data[index]['shortdis'],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                      trailing: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 40,
                          width: 80,
                          child: Center(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => clickmore(
                                            img: data[index]['images'],
                                            shdis: data[index]['shortdis'],
                                            ldis: data[index]['longdis'],
                                          )));
                            },
                            child: Text(
                              "Click More",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )),
                        ),
                      ),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
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
