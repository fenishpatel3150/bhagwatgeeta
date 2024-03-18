import 'dart:math';

import 'package:bhagwatgeeta/screen/slokscreen.dart';
import 'package:flutter/material.dart';

import '../utils/list.dart';

class bagwatgeeta extends StatefulWidget {
  const bagwatgeeta({super.key});

  @override
  State<bagwatgeeta> createState() => _bagwatgeetaState();
}

class _bagwatgeetaState extends State<bagwatgeeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
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
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 300,
                ),
                Column(
                  children: [
                    Container(
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          18,
                              (index) =>
                              GestureDetector(
                                onTap: () {
                                  slokIndex = index;
                                  Navigator.of(context).pushNamed('slok');
                                },
                                child: adhyay(
                                  l2[0][index]['img'],
                                  l2[0][index]['name'],
                                  l2[0][index]['no'],
                                ),
                              ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  Widget adhyay(String i1, String a1, String n1) {
    return Padding(
      padding:  EdgeInsets.only(
          top: 10,
          bottom: 10
      ),
      child: Container(
        height: 100,
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
            colors: [Colors.yellowAccent, Colors.orange],
        ),),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.white,),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),

                ),
              ),
              child: Image.asset(i1),
            ),
            Container(
              width: 220,
              height: 110,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        n1,
                        style:
                        TextStyle(fontSize: 15),
                      ),
                      Text(
                        ' अध्याय',
                        style:
                        TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  FittedBox(
                    alignment: Alignment.center,
                    child: Text(
                      a1,
                      style: TextStyle(fontSize: 25),
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