import 'dart:async';
import 'package:ba_task/alphabet-widget.dart';
import 'package:ba_task/rich-text-widget.dart';
import 'package:flutter/material.dart';

class Rot13Simulation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Rot13SimulationState();
  }
}

class Rot13SimulationState extends State<Rot13Simulation> {
  final _normalStyle = TextStyle(
    //backgroundColor: Colors.white,
    fontSize: 34,
    letterSpacing: 25,
    fontWeight: FontWeight.bold,
  );
  final _redStyle = TextStyle(
    backgroundColor: Colors.red,
    color: Colors.white,
    fontSize: 34,
    letterSpacing: 25,
    fontWeight: FontWeight.bold,
  );

  final _greenStyle = TextStyle(
    backgroundColor: Colors.green,
    color: Colors.white,
    fontSize: 34,
    letterSpacing: 25,
    fontWeight: FontWeight.bold,
  );

  int redIndex = 0;
  int indexRed = 7;
  int indexGreen = 20;
  int initialRedValue = 1;
  int initialGreenValue = 1;

  String char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String name = 'HELLO';
  String encrypted = 'URYYB';
  String descryption = '';
  bool b = true;
  Icon myIcon = Icon(
    Icons.play_arrow,
    color: Colors.white,
  );
  bool containerVisibility = true;

  late Timer timer;

  @override
  Widget build(BuildContext context) {
    // var alphabets = <String>[];
    // for (var i = 97; i <= 122; i++) {
    //   alphabets.add(String.fromCharCode(i));
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text('Simulator'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: containerVisibility,
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),
                  //color: Colors.blue,
                  margin:
                      EdgeInsets.only(top: 40, bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    redIndex == 0
                        ? 'We replace (H) with (U) because (H + 13 = U).'
                        : redIndex == 1
                            ? 'We replace (E) with (R) because (E + 13 = R).'
                            : redIndex == 2
                                ? 'We replace (L) with (Y) because (L + 13 = Y).'
                                : redIndex == 3
                                    ? 'We replace (L) with (Y) because (L + 13 = Y).'
                                    : redIndex == 4
                                        ? 'We replace (O) with (B) because (O + 13 = B).'
                                        : '',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                ),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20),
                child: MyRichTextWidget(
                    'H', 'E', 'L', 'L', 'O', redIndex, _redStyle, _normalStyle),
              ),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
                //color: Colors.blue,
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                padding: EdgeInsets.all(20),
                child: AlphabetWidget(2, indexRed, indexGreen, _redStyle,
                    _greenStyle, _normalStyle),
              ),
              //SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.green,
                    width: 5,
                  ),
                ),
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(top: 20),
                child: MyRichTextWidget('U', 'R', 'Y', 'Y', 'B', redIndex,
                    _greenStyle, _normalStyle),
              ),
              //SizedBox(height: 300),
              ElevatedButton(
                onPressed: () => setState(() {
                  b == true
                      ? () {
                          timer = Timer.periodic(Duration(seconds: 3), (timer) {
                            setState(() {
                              for (var i = initialRedValue;
                                  i < name.length;
                                  i++) {
                                for (var j = 0; j < char.length; j++) {
                                  if (name[i] == char[j]) {
                                    indexRed = j;
                                    break;
                                  }
                                }

                                break;
                              }
                              for (var i = initialGreenValue;
                                  i < encrypted.length;
                                  i++) {
                                for (var j = 0; j < char.length; j++) {
                                  if (j > 25) {
                                    indexGreen = j % 26;
                                    break;
                                  } else if (encrypted[i] == char[j]) {
                                    indexGreen = j;
                                    break;
                                  }
                                }

                                break;
                              }
                              initialRedValue++;
                              initialGreenValue++;
                              //print('initialValue is: $initialRedValue');

                              redIndex++;
                              //print('redIndex is: $redIndex');
                              if (initialRedValue > 5) {
                                initialRedValue = 0;
                                initialGreenValue = 0;
                                indexRed = -1;
                                indexGreen = -1;
                              }

                              if (redIndex > 5) {
                                redIndex = 0;
                              }
                              if (redIndex == 5)
                                containerVisibility = false;
                              else
                                containerVisibility = true;
                            });
                          });
                          b = false;
                          myIcon = Icon(
                            Icons.pause,
                            color: Colors.white,
                          );
                          containerVisibility = true;
                        }()
                      : () {
                          timer.cancel();
                          b = true;
                          myIcon = Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          );
                        }();
                }),
                child: myIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
