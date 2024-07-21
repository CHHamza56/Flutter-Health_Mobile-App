import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double bmi = 0.0;
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  void calculateBMI() {
    double weightValue = double.parse(weight.text);
    double heightValue =
        double.parse(height.text) * 0.3048; // convert cm to meters
    int ageValue = int.parse(age.text);

    setState(() {
      bmi = weightValue / (heightValue * heightValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Text(
          "Back",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'BMI CALCULATOR CHART',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(57, 158, 158, 158),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        color: Color.fromARGB(148, 0, 0, 0),
                        child: Center(
                          child: Text(
                            'BMI',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'WEIGHT STATUS',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        color: Color.fromARGB(148, 0, 0, 0),
                        child: Center(
                          child: Text(
                            'Below 18.5',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'Underweight',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        color: Color.fromARGB(148, 0, 0, 0),
                        child: Center(
                          child: Text(
                            '18.5 - 24.9',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'Healthy',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        color: Color.fromARGB(148, 0, 0, 0),
                        child: Center(
                          child: Text(
                            '25.0 - 29.9',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'Overweight',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 50,
                        color: Color.fromARGB(148, 0, 0, 0),
                        child: Center(
                          child: Text(
                            '30.0 - and Above',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'Obese',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'BMI measures body fat based on weight and height, offering insights into whether you are underweight, normal weight, overweight, or obese. It is widely used to assess overall health status.',
                style: TextStyle(color: Colors.white54),
              ),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.black, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: .5)
                ]),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: height,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Height in Feet',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 172, 164, 164),
                        fontSize: 12),
                  ),
                )),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.black, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: .5)
                ]),
                child: TextFormField(
                  controller: weight,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight in kg's",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 172, 164, 164),
                          fontSize: 12)),
                  style: TextStyle(color: Colors.white),
                )),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.black, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: .5)
                ]),
                child: TextFormField(
                  controller: age,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Age',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 172, 164, 164),
                          fontSize: 12)),
                  style: TextStyle(color: Colors.white),
                )),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.black, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: .5)
                ]),
                child: TextFormField(
                  controller: gender,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Gender',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 172, 164, 164),
                          fontSize: 12)),
                  style: TextStyle(color: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * .935,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: .5)
                          ]),
                      child: Center(
                        child: Text(
                          bmi < 18.5
                              ? bmi.toStringAsFixed(2) + " Underweight"
                              : bmi >= 18.5 && bmi <= 24.9
                                  ? bmi.toStringAsFixed(2) + " Healthy"
                                  : bmi >= 25.0 && bmi <= 29.9
                                      ? bmi.toStringAsFixed(2) + " Overweight"
                                      : bmi.toStringAsFixed(2) + " Obese",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                calculateBMI();
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .935,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: .5)
                          ]),
                      child: Center(
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
