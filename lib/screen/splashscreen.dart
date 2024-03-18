import 'dart:async';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed('home');
      },
    );

    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 800,
                width: 370,
                child: Image.asset('assets/splasscreen.jpeg',fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}
