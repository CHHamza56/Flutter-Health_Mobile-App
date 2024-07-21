import 'package:flutter/material.dart';

class clickmore extends StatefulWidget {
  String img;
  String shdis;
  String ldis;

  clickmore({
    super.key,
    required this.img,
    required this.shdis,
    required this.ldis,
  });

  @override
  State<clickmore> createState() => _clickmoreState();
}

class _clickmoreState extends State<clickmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Back"),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black12),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: Image.network(
                widget.img,
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              widget.ldis,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 150, 197, 193),
          )
        ],
      ),
    );
  }
}
