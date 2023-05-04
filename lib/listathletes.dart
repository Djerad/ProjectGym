import 'package:flutter/material.dart';

class Listathletes extends StatefulWidget {
  const Listathletes({super.key});

  @override
  State<Listathletes> createState() => _ListathletesState();
}

class _ListathletesState extends State<Listathletes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/13.jpg"), fit: BoxFit.cover)),
        child: ListView(
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFFFF1E0F),
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //drawer
                Text(
                  "Our Athletes",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Athletes List",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 550,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 22, 22),
                  borderRadius: BorderRadius.circular(20)),
              child: ListView.builder(
                itemCount: 32,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("Profile");
                      },
                      child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          width: (double.infinity) - 40,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            leading: null,
                            title: null,
                          )));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
