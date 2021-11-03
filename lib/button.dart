import 'dart:math';

import 'package:ba_task/atbash-algo.dart';
import 'package:ba_task/caesar-algo.dart';
import 'package:ba_task/monoalphabetic-algo.dart';
import 'package:ba_task/rot-13-algo.dart';
import 'package:ba_task/text-field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatefulWidget {
  int cipher;
  MyButton(this.cipher);
  @override
  State<StatefulWidget> createState() {
    return MyButtonState(this.cipher);
  }
}

class MyButtonState extends State<MyButton> {
  static var myController3;
  static var encryptedWord;
  static var decryptedWord;
  static String word = "";
  int cipher;
  var monoReverese;

  MyButtonState(this.cipher);
  @override
  Widget build(BuildContext context) {
    var alphabets = <String>[];

    for (var i = 97; i <= 122; i++) {
      alphabets.add(String.fromCharCode(i));
    }

    var characters = <String>[];
    var charactersReverseAtbash = <String>[];
    var charactersReverseMono = <String>[];
    for (var i = 97, j = 122; i <= 122; i++, j--) {
      characters.add(String.fromCharCode(i));
      charactersReverseAtbash.add(String.fromCharCode(j));
    }
    List<String> generateKey() {
      for (var i = 0; i < characters.length; i++) {
        var random = Random();
        var result = random.nextInt(26);
        var c = characters[result];
        if (!charactersReverseMono.contains(c)) {
          charactersReverseMono.add(c);
        } else {
          i--;
        }
      }
      monoReverese = charactersReverseMono;
      return charactersReverseMono;
    }

    // print('your x is $monoReverese');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: ElevatedButton.icon(
            onPressed: () => setState(() {
              cipher == 1
                  ? encryptedWord = CaesarAlgo.encryption(
                      MyTextField.myController1.text,
                      int.parse(MyTextField.myController2.text),
                      alphabets,
                    )
                  : cipher == 2
                      ? encryptedWord = AtbashAlgo.encryption(
                          MyTextField.myController1.text,
                          characters,
                          charactersReverseAtbash,
                        )
                      : cipher == 3
                          ? encryptedWord = MonoalphabeticAlgo.encryption(
                              MyTextField.myController1.text,
                              characters,
                              generateKey(),
                            )
                          : encryptedWord = Rot13Algo.encryption(
                              MyTextField.myController1.text,
                              alphabets,
                            );
              MyTextField.myController3.text = encryptedWord;
            }),
            icon: Icon(Icons.lock),
            label: Text('Encrypt'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: ElevatedButton.icon(
            onPressed: () => setState(() {
              cipher == 1
                  ? decryptedWord = CaesarAlgo.decryption(
                      MyTextField.myController1.text,
                      int.parse(MyTextField.myController2.text),
                      alphabets,
                    )
                  : cipher == 2
                      ? decryptedWord = AtbashAlgo.decryption(
                          MyTextField.myController1.text,
                          characters,
                          charactersReverseAtbash,
                        )
                      : cipher == 3
                          ? decryptedWord = MonoalphabeticAlgo.decryption(
                              MyTextField.myController1.text,
                              characters,
                              monoReverese,
                            )
                          : decryptedWord = Rot13Algo.decryption(
                              MyTextField.myController1.text,
                              alphabets,
                            );
              MyTextField.myController3.text = decryptedWord;
            }),
            icon: Icon(Icons.lock_open),
            label: Text('Decrypt'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
