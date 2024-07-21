import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/home.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  TextEditingController user_name = TextEditingController();
  TextEditingController mess = TextEditingController();
  double rating = 0.0;

  Future insert() async {
    var res = await http.post(
      Uri.parse("https://apptocoder.com/MohsinAli/feedback.php"),
      body: {
        "name": user_name.text,
        "mess": mess.text,
        "rating": rating.toString(),
      },
    );
    var snackBar = SnackBar(content: Text('Update Successfully'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      user_name.clear();
      mess.clear();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 40),
            child: Text(
              'FeedBack',
              style: TextStyle(color: Colors.black, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        TextField(
                          controller: user_name,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: mess,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Message",
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Rate Us',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              this.rating = rating;
                            });
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Submit',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                insert();
                              },
                              child: Icon(Icons.arrow_forward),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
