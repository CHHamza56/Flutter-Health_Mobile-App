import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:project/BMI.dart';

class weightgain extends StatefulWidget {
  const weightgain({super.key});

  @override
  State<weightgain> createState() => _weightgainState();
}

class _weightgainState extends State<weightgain> {
  bool checkedValue = false;
  bool male_checkedValue = false;
  bool female_checkedValue = false;
  bool other_checkedValue = false;
  bool age1_checkedValue = false;
  bool age2_checkedValue = false;
  bool age3_checkedValue = false;
  double bmi = 12.0;
  int age = 21;
  String gender = 'Male';
  String dietPlan = '';
  checkPlan() {
    if (bmi < 18.5) {
      dietPlan = 'Underweight diet plan:\n\n';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      dietPlan = 'Normal weight diet plan:\n\n';
    } else if (bmi >= 25 && bmi < 29.9) {
      dietPlan = 'Overweight diet plan:\n\n';
    } else {
      dietPlan = 'Obese diet plan:\n\n';
    }

    // Add diet plan details based on age and gender
    if (age >= 18 && gender == 'Female') {
      dietPlan +=
          'Caloric Deficit: Aim for a slight caloric deficit. Consume fewer calories than your body expends.\n\n'
          'Balanced Macronutrients: Include a balance of carbohydrates, proteins, and healthy fats. Focus on whole foods such as fruits, vegetables, lean proteins, and whole grains.\n\n'
          'Portion Control: Pay attention to portion sizes to avoid overeating.\n\n'
          'Regular Meals: Eat three balanced meals a day with healthy snacks in between to keep your metabolism steady.\n\n'
          'Hydration: Drink plenty of water throughout the day to stay hydrated and aid in weight loss.\n\n'
          'Exercise: Incorporate regular exercise into your routine, including a mix of cardio and strength training exercises to maximize weight loss and improve overall health.';
    } else if (age >= 18 && gender == 'Male') {
      dietPlan +=
          'Caloric Deficit: Aim for a slight caloric deficit. Consume fewer calories than your body expends.\n\n'
          'Balanced Macronutrients: Include a balance of carbohydrates, proteins, and healthy fats. Focus on whole foods such as fruits, vegetables, lean proteins, and whole grains.\n\n'
          'Portion Control: Pay attention to portion sizes to avoid overeating.\n\n'
          'Regular Meals: Eat three balanced meals a day with healthy snacks in between to keep your metabolism steady.\n\n'
          'Hydration: Drink plenty of water throughout the day to stay hydrated and aid in weight loss.\n\n'
          'Exercise: Incorporate regular exercise into your routine, including a mix of cardio and strength training exercises to maximize weight loss and improve overall health.';
    }
    _modalBottomSheetMenu();
    // You can add more conditions for different age groups and genders if needed
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: new Container(
              padding: EdgeInsets.all(20),
              height: 550.0,
              color: Color.fromARGB(222, 191, 76, 76),
              //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: new Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: new Text(
                        dietPlan.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
          );
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              height: 665,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please fill the right information",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 3, spreadRadius: .8)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, top: 10),
                              child: Text(
                                'Gender:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 35,
                              child: CheckboxListTile(
                                title: Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: male_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    male_checkedValue = newValue!;
                                  });
                                  if (male_checkedValue == true) {
                                    setState(() {
                                      female_checkedValue = false;
                                      other_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                            Container(
                              width: 145,
                              height: 35,
                              child: CheckboxListTile(
                                title: Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: female_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    female_checkedValue = newValue!;
                                  });
                                  if (female_checkedValue == true) {
                                    setState(() {
                                      male_checkedValue = false;
                                      other_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                            Container(
                              width: 140,
                              child: CheckboxListTile(
                                title: Text(
                                  "Other",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: other_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    other_checkedValue = newValue!;
                                  });
                                  if (other_checkedValue == true) {
                                    setState(() {
                                      male_checkedValue = false;
                                      female_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Container(
                            height: 150,
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, top: 10),
                              child: Text(
                                'Age:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 35,
                              child: CheckboxListTile(
                                title: Text(
                                  "18-25",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: age1_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    age1_checkedValue = newValue!;
                                  });
                                  if (age1_checkedValue == true) {
                                    setState(() {
                                      age2_checkedValue = false;
                                      age3_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 35,
                              child: CheckboxListTile(
                                title: Text(
                                  "26-35",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: age2_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    age2_checkedValue = newValue!;
                                  });
                                  if (age2_checkedValue == true) {
                                    setState(() {
                                      age1_checkedValue = false;
                                      age3_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 40,
                              child: CheckboxListTile(
                                title: Text(
                                  "36-45",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                value: age3_checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    age3_checkedValue = newValue!;
                                  });
                                  if (age3_checkedValue == true) {
                                    setState(() {
                                      age1_checkedValue = false;
                                      age2_checkedValue = false;
                                    });
                                  }
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your BMI",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BMI()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 37, 107, 164),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 40,
                              width: 100,
                              child: Center(
                                  child: Text(
                                "BMI",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText:
                                "if you don't know your BMI then first calculate it on BMI cl",
                            hintStyle:
                                TextStyle(color: Colors.white60, fontSize: 13),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      checkPlan();
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
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
