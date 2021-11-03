import 'dart:async';

import 'package:flutter/material.dart';

class AtbashSimulation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AtbashSimulationState();
  }
}

class AtbashSimulationState extends State<AtbashSimulation> {
  Color color = Colors.black;
  String plainText = 'HELLO';
  String encryptText = 'SVOOL';
  String originalChar = '';
  String oppositeChar = '';
  var i = 0;
  var j = 0;
  var txt = <String>[];
  var txt2 = <String>[];
  var colorW1 = <Color>[];
  var colorB1 = <Color>[];
  var colorW2 = <Color>[];
  var colorB2 = <Color>[];
  var mapColor1 = <Color>[];
  var mapBackground1 = <Color>[];
  var mapBackground2 = <Color>[];
  var b = true;
  Color bl = Colors.black;
  Color green = Colors.green;
  Color w = Colors.white;
  Color red = Colors.red;
  List<Color> white = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List<Color> black = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];

  Icon playIcon = Icon(
    Icons.play_arrow,
    color: Colors.white,
    size: 30.0,
  );
  Icon replaceIcon = Icon(
    Icons.play_arrow,
    color: Colors.white,
    size: 30.0,
  );
  Icon pauseIcon = Icon(
    Icons.pause,
    color: Colors.white,
    size: 30.0,
  );

  var t;
  String plain = '';
  String shifted = '';
  void changeColor() {
    setState(() {
      if (j == encryptText.length) {
        j = 0;
      }
      for (i = j; i < encryptText.length; i++) {
        for (var x = 0; x < black.length; x++) {
          black[x] = Colors.black;
          white[x] = Colors.white;
        }
        for (var x = 0; x < colorB1.length; x++) {
          colorB1[x] = Colors.black;
          colorW1[x] = Colors.white;
          colorB2[x] = Colors.black;
          colorW2[x] = Colors.white;
        }
        white[i] = Colors.red;
        white[i + 5] = Colors.green;
        black[i] = Colors.white;
        black[i + 5] = Colors.white;
        plain = plainText.toUpperCase();
        shifted = encryptText.toUpperCase();
        colorB1[txt.indexOf(plain[i])] = Colors.white;
        colorW1[txt.indexOf(plain[i])] = Colors.red;
        colorB2[txt2.indexOf(shifted[i])] = Colors.white;
        colorW2[txt2.indexOf(shifted[i])] = Colors.green;
        originalChar = plainText[i];
        oppositeChar = encryptText[i];
        j++;
        break;
      }
    });
  }

  String generateAlphabet(i, j) {
    txt.add(String.fromCharCode(i).toUpperCase());
    return txt[j];
  }

  String generateAlphabetReverse(i, j) {
    txt2.add(String.fromCharCode(i).toUpperCase());

    return txt2[j];
  }

  Color getColorB1(j) {
    colorB1.add(Colors.black);
    return colorB1[j];
  }

  Color getColorW1(j) {
    colorW1.add(Colors.white);
    return colorW1[j];
  }

  Color getColorB2(j) {
    colorB2.add(Colors.black);
    return colorB2[j];
  }

  Color getColorW2(j) {
    colorW2.add(Colors.white);
    return colorW2[j];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simulator'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Wrap(
                    children: [
                      Text(
                          'we reverse the Alphabet and replace ($originalChar) with the Opposite of it($oppositeChar)',
                          style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize: 30,
                          )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red, width: 5)),
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: plainText[0],
                            style: TextStyle(
                              color: black[0],
                              backgroundColor: white[0],
                              fontSize: 45,
                            )),
                        TextSpan(
                            text: plainText[1],
                            style: TextStyle(
                              color: black[1],
                              backgroundColor: white[1],
                              fontSize: 45,
                            )),
                        TextSpan(
                            text: plainText[2],
                            style: TextStyle(
                              color: black[2],
                              backgroundColor: white[2],
                              fontSize: 45,
                            )),
                        TextSpan(
                            text: plainText[3],
                            style: TextStyle(
                              color: black[3],
                              backgroundColor: white[3],
                              fontSize: 45,
                            )),
                        TextSpan(
                            text: plainText[4],
                            style: TextStyle(
                              color: black[4],
                              backgroundColor: white[4],
                              fontSize: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Wrap(
                      children: [
                        for (var i = 97, j = 0; i <= 122; i++, j++)
                          Container(
                            padding: EdgeInsets.all(6.0),
                            color: getColorW1(j),
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: generateAlphabet(i, j),
                                      style: TextStyle(
                                        color: getColorB1(j),
                                        //backgroundColor: getColorW1(j),
                                        fontSize: 30,
                                      )),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Wrap(
                      children: [
                        for (var i = 122, j = 0; i >= 97; i--, j++)
                          Container(
                            padding: EdgeInsets.all(6.0),
                            color: getColorW2(j),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: generateAlphabetReverse(i, j),
                                      style: TextStyle(
                                        color: getColorB2(j),
                                        //backgroundColor: getColorW2(j),
                                        fontSize: 30,
                                      )),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green, width: 5)),
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: encryptText[0],
                            style: TextStyle(
                              color: black[5],
                              backgroundColor: white[5],
                              fontSize: 45,
                            )),
                        TextSpan(
                            text: encryptText[1],
                            style: TextStyle(
                              color: black[6],
                              backgroundColor: white[6],
                              fontSize: 45,
                            )),
                        TextSpan(
                          text: encryptText[2],
                          style: TextStyle(
                            color: black[7],
                            backgroundColor: white[7],
                            fontSize: 45,
                          ),
                        ),
                        TextSpan(
                          text: encryptText[3],
                          style: TextStyle(
                            color: black[8],
                            backgroundColor: white[8],
                            fontSize: 45,
                          ),
                        ),
                        TextSpan(
                            text: encryptText[4],
                            style: TextStyle(
                              color: black[9],
                              backgroundColor: white[9],
                              fontSize: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => setState(() {
                          b == true
                              ? () {
                                  playIcon = pauseIcon;
                                  b = false;
                                  t = Timer.periodic(Duration(seconds: 3),
                                      (Timer t) => changeColor());
                                }()
                              : () {
                                  if (b == false) {
                                    playIcon = replaceIcon;
                                    b = true;
                                    t.cancel();
                                  }
                                }();
                        }),
                    child: playIcon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
