import 'package:flutter/material.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
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
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
    'assets/images/dppic.jpeg',
  ];
  List txt = [
    "Client 1",
    "Client 2",
    "Client 3",
    "Client 4",
    "Client 5",
    "Client 6",
    "Client 7",
  ];
  List date = [
    "12/12/25",
    "Yesterday",
    "Yesterday",
    "01/01/24",
    "15/12/23",
    "Yesterday",
    "Yesterday",
  ];
  List subtitle = [
    "Woking Day",
    "Hello",
    "Hy",
    "hello",
    "check me",
    "aslam o alykum",
    "Hy",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Text(
          "FeedBack",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search, color: Colors.black, size: 20),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 20,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "chats",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Updates",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Order",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 550,
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: clr[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 2,
                    ),
                    width: 80,
                    height: 80,
                    child: Center(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100000),
                            child: Image.asset(
                              img[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          txt[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        trailing: Text(
                          date[index],
                          style: TextStyle(color: Colors.black),
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
            ),
          ],
        ),
      ),
    );
  }
}
