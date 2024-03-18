import 'dart:math';

import 'package:bhagwatgeeta/utils/maingeeta.dart';
import 'package:flutter/material.dart';

class geetasar extends StatefulWidget {
  const geetasar({super.key});

  @override
  State<geetasar> createState() => _geetasarState();
}

class _geetasarState extends State<geetasar> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.orange],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    left: 110,
                    child: Text(
                      '॥ गीता ॥',
                      style: TextStyle(
                          fontSize: 50,),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              width: 380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: List.generate(
                                  l1[1]['bhaags'].length,
                                      (index) => buildContainer(index),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellowAccent, Colors.orangeAccent],
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border(bottom: BorderSide(width: 10))),
          child: Column(
            children: [
              Text(
                l1[1]['bhaags'][index]['id'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height / 50,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  l1[1]['bhaags'][index]['name'],
                  style: TextStyle(
                    fontSize: height / 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                l1[1]['bhaags'][index]['meaning'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}
int index = 0;

