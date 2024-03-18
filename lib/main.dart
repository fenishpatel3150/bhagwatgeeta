

import 'package:bhagwatgeeta/screen/HomeScreen.dart';
import 'package:bhagwatgeeta/screen/artiscreen.dart';
import 'package:bhagwatgeeta/screen/bhagwatgeeta.dart';
import 'package:bhagwatgeeta/screen/geetasar.dart';
import 'package:bhagwatgeeta/screen/mahatmay.dart';
import 'package:bhagwatgeeta/screen/slokscreen.dart';
import 'package:bhagwatgeeta/screen/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: 'gArti',
      routes: {
        '/': (context)=> splashscreen(),
        'home' : (context) => homescreen(),
        'arti':(context)=> artiscreen(),
        'matamay':(context)=> matamayascreen(),
        'sar':(context)=> geetasar(),
        'geeta':(context)=> bagwatgeeta(),
        'slok':(context)=> slokscreen(),
      },
    );
  }
}
