import 'package:flutter/material.dart';

class Signup1 extends StatefulWidget {
  const Signup1({super.key});

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
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
                image: AssetImage("images/7.jpg"), fit: BoxFit.fill)),
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
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Container(
                        color: Color(0xFFFF1E0F), child: Icon(Icons.person)),
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Container(
                        color: Color(0xFFFF1E0F), child: Icon(Icons.person)),
                    hintText: "User Name",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                        color: Color(0xFFFF1E0F),
                        child: Icon(Icons.phone_rounded)),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      color: Color(0xFFFF1E0F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Color(0xFFFF1E0F)),
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("Login");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFF1E0F)),
                      ),
                    ),
                  ),
                  Container(
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
                        "NEXT",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFF1E0F)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
