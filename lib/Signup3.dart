// ignore_for_file: prefer_const_constructors

import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gymapp/homepage.dart';

class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  bool shouldCheck = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      Navigator.of(context).pushNamed('/');
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenlength = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        height: screenlength,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/5.jpg",
                ),
                fit: BoxFit.fill)),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Color(0xFFFF1E0F),
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: " Confirm Password",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: CustomCheckBox(
                    value: shouldCheck,
                    shouldShowBorder: true,
                    borderColor: Color(0xFFFF1E0F),
                    checkedFillColor: Color(0xFFFF1E0F),
                    borderRadius: 8,
                    borderWidth: 1,
                    checkBoxSize: 22,
                    onChanged: (val) {
                      setState(() {
                        shouldCheck = val;
                      });
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "You agree to our ",
                          style: TextStyle(color: Color(0xFFFF1E0F)),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Termes of Services ",
                            style: TextStyle(
                                color: Color(0xFFFF1E0F),
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        Text(
                          " and",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: Color(0xFFFF1E0F)),
                    onPressed: () {
                      signUp();
                    },
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Color(0xFFFF1E0F)),
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("Signup2");
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFFF1E0F)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
