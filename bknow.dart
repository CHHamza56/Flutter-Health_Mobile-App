import 'package:flutter/material.dart';

import 'cashnow.dart';

class bknow extends StatefulWidget {
  const bknow({super.key});

  @override
  State<bknow> createState() => _bknowState();
}

class _bknowState extends State<bknow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment Option",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Credit/Debit Card",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Bank Account", border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Digital Wallet",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // ignore: prefer_const_constructors
                color: Colors.white,
              ),
              height: 320,
              width: MediaQuery.of(context).size.width - 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Bank Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                      color: Color.fromARGB(255, 150, 197, 193),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Please select",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Account Holder Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                      color: Color.fromARGB(255, 150, 197, 193),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Type Name",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Account No/IBAN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                      color: Color.fromARGB(255, 150, 197, 193),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Type Number",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 230,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cashnow()));
                        },
                        child: Text(
                          "Cash Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
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
    );
  }
}
