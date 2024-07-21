// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  void _launchURL() async {
    final url = Uri.parse('https://maps.app.goo.gl/RJysL96E2JAmHAnLA');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      body: Column(
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
                  'assets/images/location.jpg',
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
              _launchURL();
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
                  "Find Our Location ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
