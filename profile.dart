import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/settings.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        appBar: AppBar(
          leading: Container(),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Profile"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.black12),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/dermatologist.jpeg',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/dppic.jpeg',
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 15,
                    child: Text(
                      "Hello,welcome",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.black12),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/flatoff.jpg',
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 200,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Bobbers',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Flat 10% off!'),
                          TyperAnimatedText('Flat 20% off!'),
                          TyperAnimatedText('Flat 30% off!'),
                          TyperAnimatedText('Flat 50% off!'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settings()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 107, 164),
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Center(
                    child: Text(
                      "Moodify Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => project()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 107, 164),
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
