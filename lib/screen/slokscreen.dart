import 'dart:math';

import 'package:bhagwatgeeta/utils/maingeeta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class slokscreen extends StatefulWidget {
  const slokscreen({super.key});

  @override
  State<slokscreen> createState() => _slokscreenState();
}

class _slokscreenState extends State<slokscreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: height/3,

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
                    style: TextStyle(
                        fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 230,),
                Container(
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          width: 450,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: List.generate(
                              l1[0]['Bhaags'][slokIndex]['sloks'].length,
                                  (index) => buildContainer(index),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Container buildContainer(int index) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
    decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellowAccent, Colors.orangeAccent],
        ),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: [
        if (index == 0)
          Padding(
            padding:  EdgeInsets.all(5),
            child: Text(
              l1[0]['Bhaags'][slokIndex]['id'],
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          ),
        if (index == 0)
          Text(
            l1[0]['Bhaags'][slokIndex]['name'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2E2E2E),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            l1[0]['Bhaags'][slokIndex]['sloks'][index]['slok'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E2E2E),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            l1[0]['Bhaags'][slokIndex]['sloks'][index]['meaning'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E2E2E),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 455,
          decoration: const BoxDecoration(
            color: Color(0xFF2F2D32),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Copy',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Share',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}



int slokIndex = 0;