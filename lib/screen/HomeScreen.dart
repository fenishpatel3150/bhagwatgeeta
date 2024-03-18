import 'dart:math';
import 'package:flutter/material.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: height / 3,
            width: width,
            decoration:  BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [Colors.yellowAccent, Colors.orangeAccent],
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
                Container(
                  height: height / 4,
                ),
                Container(
                  height: height / 1.7,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('geeta');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.yellowAccent, Colors.orangeAccent],
                          ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                    BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  )

                                ),
                                child:
                                Image.asset('assets/image2.png'),
                              ),  // 1box
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'भगवद गीता',
                                  style: TextStyle(
                                      fontSize: 30),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('sar');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.yellowAccent, Colors.orangeAccent],
                          ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                    BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child:
                                Image.asset('assets/image3.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                height: 110,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता सार',
                                  style: TextStyle(
                                      fontSize: 30,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('matamay');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.yellowAccent, Colors.orangeAccent],
                          ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                    BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child:
                                Image.asset('assets/image4.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता माहात्म्य',
                                  style: TextStyle(
                                      fontSize: 30),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('arti');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.yellowAccent, Colors.orangeAccent],
                          ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                    BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child:
                                Image.asset('assets/image2.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता आरती',
                                  style: TextStyle(
                                      fontSize: 30),
                                ),
                              )
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
        ],
      ),
    );;
  }
}

















