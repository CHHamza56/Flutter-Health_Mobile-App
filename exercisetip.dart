// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class exercisetip extends StatefulWidget {
  String ty;
  exercisetip({super.key, required this.ty});

  @override
  State<exercisetip> createState() => _exercisetipState();
}

class _exercisetipState extends State<exercisetip> {
  List data = [];
  Future insert() async {
    print(widget.ty.toString());
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/exercisetips.php"),
        body: {"ty": widget.ty});
    var result = jsonDecode(res.body);
    print(result);
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
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 150, 197, 193),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Back"),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black12),
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  child: Image.network(
                    data[index]['videos'],
                    height: 330,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  data[index]['longdis'],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
