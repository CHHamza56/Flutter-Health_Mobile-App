import 'package:flutter/material.dart';
import 'package:project/booknow.dart';

class readmore extends StatefulWidget {
  String img;
  String name;
  String des;
  String pr;
  readmore(
      {super.key,
      required this.img,
      required this.name,
      required this.des,
      required this.pr});

  @override
  State<readmore> createState() => _readmoreState();
}

class _readmoreState extends State<readmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          children: [Text("Back")],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black12),
            height: 330,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              child: Image.network(
                widget.img,
                height: 330,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              widget.des,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "PKR:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.pr,
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
                                imge: widget.img,
                                nam: widget.name,
                                pri: widget.pr,
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 150, 197, 193),
                  ),
                  height: 35,
                  width: 90,
                  child: Center(
                    child: Text(
                      "Book Now",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
