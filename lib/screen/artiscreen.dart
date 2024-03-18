import 'dart:math';

import 'package:flutter/material.dart';

class artiscreen extends StatefulWidget {
  const artiscreen({super.key});

  @override
  State<artiscreen> createState() => _artiscreenState();
}

class _artiscreenState extends State<artiscreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
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
                  height: height / 4.2,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width / 2.2,
                  height: height / 1.6,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    alignment: Alignment.center,
                    height: height / 1.75,
                    width: width / 2.4,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.orangeAccent],
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'गीता आरती',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("जय भगवद् गीते, जय भगवद् गीते ।",
                              style: TextStyle(fontSize: 18,),),
                            Text("हरि हिय कमल विहारिणि, सुन्दर सुपुनीते ॥",
                              style: TextStyle(fontSize: 18,),),
                            Text("कर्म सुमर्म प्रकाशिनि, कामासक्तिहरा ।",
                              style: TextStyle( fontSize: 18,),),
                            Text("तत्त्वज्ञान विकाशिनि, विद्या ब्रह्म परा ॥",
                              style: TextStyle( fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle( fontSize: 18,),),
                            Text("निश्चल भक्ति विधायिनि, निर्मल मलहारी ।",
                              style: TextStyle( fontSize: 18,),),
                            Text("शरण सहस्य प्रदायिनि, सब विधि सुखकारी ॥",
                              style: TextStyle( fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle( fontSize: 18,),),
                            Text("राग द्वेष विदारिणि, कारिणि मोद सदा ।",
                              style: TextStyle(fontSize: 18,),),
                            Text("भव भय हारिणि, तारिणि परमानन्दप्रदा ॥",
                              style: TextStyle( fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle( fontSize: 18,),),
                            Text("आसुर भाव विनाशिनि, नाशिनि तम रजनी ।",
                              style: TextStyle( fontSize: 18,),),
                            Text("दैवी सद् गुणदायिनि, हरि रसिका सजनी ॥",
                              style: TextStyle( fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle(fontSize: 18,),),
                            Text("समता त्याग सिखावनि, हरि मुख की बानी ।",
                              style: TextStyle( fontSize: 18,),),
                            Text("सकल शास्त्र की स्वामिनी, श्रुतियों की रानी ॥",
                              style: TextStyle(fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle(fontSize: 18,),),
                            Text("दया सुधा बरसावनि, मातु! कृपा कीजै ।",
                              style: TextStyle(fontSize: 18,),),
                            Text("हरिपद प्रेम दान कर, अपनो कर लीजै ॥",
                              style: TextStyle(fontSize: 18,),),
                            Text("जय भगवद् गीते, जय जय भगवद् गीते...",
                              style: TextStyle(fontSize: 18,),),
                            Text("जय भगवद् गीते, हरि हिय कमल विहारिणि",
                              style: TextStyle(fontSize: 18,),),
                            Text("सुन्दर सुपुनीते ॥", style: TextStyle(fontSize: 18,),),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

