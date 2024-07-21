// ignore_for_file: prefer_const_constructors
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:project/allHome.dart';
import 'package:project/signup.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: EasySplashScreen(
        logoWidth: 100,
        logo: Image.asset(
          'assets/images/logo.png',
        ),
        title: Text(
          "HelioDerm",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 41, 49, 97),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        showLoader: false,
        navigator: project(),
        durationInSeconds: 3,
      ),
    );
  }
}
class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}
class _projectState extends State<project> {
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isChecked = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 5),
                    child: Text(
                      "LOG IN",
                      style:
                          TextStyle(fontSize: 28, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 205,
                    width: 205,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/pas2.png',
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 450,
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please Sign In To Continue",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 37, 107, 164),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 90,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextFormField(
                            controller: name,
                            decoration: InputDecoration(
                                hintText: "User Name",
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 90,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextFormField(
                              controller: pass,
                              obscureText: _isObscure,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                      Text(
                        "Forget Password",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 164, 60, 52),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (name.text.isEmpty) {
                        showTopSnackBar(
                          Overlay.of(context),
                          CustomSnackBar.error(
                            message: "Please Enter Name",
                          ),
                        );
                      } else if (pass.text.isEmpty) {
                        showTopSnackBar(
                          Overlay.of(context),
                          CustomSnackBar.error(
                            message: "Please Enter Password",
                          ),
                        );
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AppHome()));
                      }
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
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Create Account!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 164, 60, 52),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
