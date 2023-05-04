import 'package:flutter/material.dart';
import 'package:gymapp/widgetselectorsignup2.dart';

class ProfileCoach extends StatefulWidget {
  const ProfileCoach({super.key});

  @override
  State<ProfileCoach> createState() => _ProfileCoachState();
}

class _ProfileCoachState extends State<ProfileCoach> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenlength = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenlength,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/13.jpg"), fit: BoxFit.cover)),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.red,
                size: 20,
              ),
            ],
          ),
          Center(
            child: Text(
              " Demand For Coaching ",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Center(
            child: ListTile(
              autofocus: true,
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
              ),
              title: Text(
                "variable username",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: screenlength - 150,
            width: screenwidth - 30,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/13.jpg"), fit: BoxFit.cover)),
            child: ListView(
              children: [
                Text(
                  "informations in the demand formule",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Full name : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Age  : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Height : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Weight : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Old in Coaching ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        " Training During  : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 40,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        "  Phone Number  : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        //variable
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 100,
                  width: screenwidth - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      Text(
                        " Why Our Gym :  ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      //contoller of user(Why choose our gym )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Accepte ",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Refuse ",
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                          Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
