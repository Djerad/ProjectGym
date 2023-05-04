// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenlength = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: screenlength,
            width: screenwidth,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "images/8.jpg",
              ),
              fit: BoxFit.fill,
            )),
            child: ListView(
              children: [
                SizedBox(
                  height: 80,
                ),

                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xFFFF1E0F),
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                //Email field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email),
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                //password field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.password_sharp),
                        hintText: "Password",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You forget your password ?",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        " Get Help",
                        style: TextStyle(color: Color(0xFFFF1E0F)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //Login button
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: Container(
                    width: 122,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor: Color(0xFFFF1E0F)),
                        onPressed: () {
                          signIn();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "You don't have an account ? ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("Signup1");
                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: Color(0xFFFF1E0F), fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        print("test Facebook button");
                      },
                      child: Image.asset(
                        "images/10.jpg",
                        fit: BoxFit.cover,
                        width: 45,
                        height: 45,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        print("test google button");
                      },
                      child: Image.asset(
                        "images/3.png",
                        fit: BoxFit.cover,
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
