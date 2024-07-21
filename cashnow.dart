import 'package:flutter/material.dart';
import 'package:project/bknow.dart';
import 'package:project/booknow.dart';
import 'package:project/home.dart';

class cashnow extends StatefulWidget {
  const cashnow({super.key});

  @override
  State<cashnow> createState() => _cashnowState();
}

class _cashnowState extends State<cashnow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
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
                height: 250,
                width: 250,
                margin: EdgeInsets.only(top: 150),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/payment.webp',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 37, 107, 164),
                ),
                height: 50,
                width: MediaQuery.of(context).size.width - 130,
                child: Center(
                  child: Text(
                    "Go Back",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
