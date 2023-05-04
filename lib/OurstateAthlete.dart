import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OurstateShop extends StatefulWidget {
  const OurstateShop({super.key});

  @override
  State<OurstateShop> createState() => _OurstateShopState();
}

class _OurstateShopState extends State<OurstateShop> {
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
        child: ListView(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                  size: 20,
                ),
                Text(
                  "Our Stats",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(Icons.star_rate)
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: (double.infinity) - 40,
              height: 500,
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  Text(
                    "Our Athletes Monthly Stats",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          Text(" Month :"),

                          Text("April"), //variable of  mounth
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    width: (double.infinity) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Row(children: [
                      Text(
                        "Monthly income : ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      //variable of income
                    ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: (double.infinity) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Row(children: [
                      Text(
                        " Net Profits : ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      //variable of income
                    ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: (double.infinity) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Row(children: [
                      Text(
                        " This Mounth Stats Are  : ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      //variable of income
                    ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: (double.infinity) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Row(children: [
                      Text(
                        " Number Of New Athletes  : ",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      //variable of income
                    ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/13.jpg"),
                                    fit: BoxFit.cover)),
                            child: Text(
                              " Total The Year Stats",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/13.jpg"),
                                    fit: BoxFit.cover)),
                            child: Text(
                              " To See Last Mounth Stats",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
