import 'package:flutter/material.dart';
import 'package:gymapp/Auth.dart';
import 'package:gymapp/Chronometer.dart';
import 'package:gymapp/DemandCoaching.dart';
import 'package:gymapp/Getstarted.dart';
import 'package:gymapp/Login.dart';
import 'package:gymapp/OurState.dart';
import 'package:gymapp/ProfileCoach.dart';
import 'package:gymapp/Signup1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gymapp/Unboarding.dart';
import 'package:gymapp/listathletes.dart';
import 'package:gymapp/profileathlete.dart';
import 'Signup2.dart';
import 'Signup3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OurStateAthlete(),
      routes: {
        //  "/": (context) => const Auth(),
        "welcome": (context) => Unboarding(),
        "Login": (context) => Login(),
        "Signup1": (context) => Signup1(),
        "Signup2": (context) => Signup2(),
        "Signup3": (context) => Signup3(),
        "Profile": (context) => Profileathlete(),
        "ListAthletes": (context) => Listathletes(),
        "ProfileCoach": (context) => ProfileCoach(),
      },
    );
  }
}
