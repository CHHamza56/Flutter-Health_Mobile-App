import 'package:flutter/material.dart';
import 'package:project/weightgain.dart';

class healthcare extends StatefulWidget {
  const healthcare({super.key});

  @override
  State<healthcare> createState() => _healthcareState();
}

class _healthcareState extends State<healthcare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Text(
          "Home",
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => healthcare()));
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => weightgain()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/plan2.jpeg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => weightgain()));
                      },
                      child: Text(
                        "Weight gain deit",
                        style: TextStyle(
                            color: Color.fromARGB(222, 191, 76, 76),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => weightgain()));
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => weightgain()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white)),
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/plan1.jpeg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => weightgain()));
                      },
                      child: Text(
                        "Weight lose deit",
                        style: TextStyle(
                            color: Color.fromARGB(222, 191, 76, 76),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Divider(
            color: Colors.black,
          ),
          Text(
            "contact With Us",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            "@Mohsinmalik1214",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://img.freepik.com/premium-vector/instagram-icon-paper-cut-style-social-media-icons_505135-235.jpg",
                    height: 35,
                    width: 35,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf7uwYXP8ZUQVjeX6ylcoqaM3x3xQyjKMv1Q&usqp=CAU",
                    height: 35,
                    width: 35,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_GqevKcmKjvAjB_OdvYAUaqdy5saG7zsK5Q&usqp=CAU",
                    height: 35,
                    width: 35,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRztNK1C_pCQCJAWfnBDHTfUiEIt2aJJHPkyA&usqp=CAU",
                    height: 35,
                    width: 35,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
