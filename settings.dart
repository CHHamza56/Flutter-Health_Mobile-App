import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  TextEditingController oldName = TextEditingController();
  TextEditingController newname = TextEditingController();
  bool isChecked = false;
  TextEditingController oldphone = TextEditingController();
  TextEditingController newphone = TextEditingController();

  TextEditingController oldpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();

  Future uodateName() async {
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/changeName.php"),
        body: {
          "oldName": oldName.text.toString(),
          "newName": newname.text.toString(),
        });
    var snackBar = SnackBar(content: Text('Update Successfully'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      oldName.clear();
      newname.clear();
    });
  }

  Future uodatePhone() async {
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/changeEmail.php"),
        body: {
          "oldphone": oldphone.text.toString(),
          "newphone": newphone.text.toString(),
        });
    var snackBar = SnackBar(content: Text('Update Successfully'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      oldphone.clear();
      newphone.clear();
    });
  }

  Future uodatePassword() async {
    var res = await http.post(
        Uri.parse("https://apptocoder.com/MohsinAli/changePass.php"),
        body: {
          "oldpassword": oldpassword.text.toString(),
          "newpassword": newpassword.text.toString(),
        });
    var snackBar = SnackBar(content: Text('Update Successfully'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      oldpassword.clear();
      newpassword.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 197, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 197, 193),
        title: Text("settings"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: oldName,
                            decoration: InputDecoration(
                                hintText: "Old Name",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: newname,
                            decoration: InputDecoration(
                                hintText: "New Name",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  uodateName();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 107, 164),
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 150,
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: oldphone,
                            decoration: InputDecoration(
                                hintText: "Old Email",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: newphone,
                            decoration: InputDecoration(
                                hintText: "New Email",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  uodatePhone();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 107, 164),
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 150,
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: oldpassword,
                            decoration: InputDecoration(
                                hintText: "Old Passwor",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextFormField(
                            controller: newpassword,
                            decoration: InputDecoration(
                                hintText: "New Password",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  uodatePassword();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 37, 107, 164),
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 150,
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
