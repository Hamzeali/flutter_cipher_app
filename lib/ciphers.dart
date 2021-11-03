import 'package:ba_task/atbash-widget.dart';
import 'package:ba_task/caesar-widget.dart';
import 'package:ba_task/monoalphabetic-widget.dart';
import 'package:ba_task/rot-13-widget.dart';
import 'package:ba_task/text-field.dart';
import 'package:flutter/material.dart';

class Ciphers extends StatelessWidget {
  void cipherScreen(BuildContext ctx, int widg) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        MyTextField.myController1.clear();
        MyTextField.myController2.clear();
        MyTextField.myController3.clear();
        return widg == 1
            ? CaesarWidget()
            : widg == 2
                ? AtbashWidget()
                : widg == 3
                    ? MonoalphabeticWidget()
                    : ROT13Widget();
      }),
    );
  }

  Widget containerCreation(String text, Color color, BuildContext ctx, int w) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onTap: () {
        cipherScreen(ctx, w);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Ciphers'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.blue, width: 3),
              //   borderRadius: BorderRadius.circular(8),
              // ),
              margin: EdgeInsets.only(bottom: 25),
              padding: EdgeInsets.all(10),
              child: Text(
                'Choose a Cipher:',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            new Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(12),
                child: GridView(
                  children: [
                    containerCreation('Caesar Cipher', Colors.red, context, 1),
                    containerCreation(
                        'Atbash Cipher', Colors.green, context, 2),
                    containerCreation(
                        'Monoalphabetic Cipher', Colors.pink, context, 3),
                    containerCreation('ROT-13', Colors.blue, context, 4),
                    //containerCreation('Caesar Cipher', Colors.orange, context, 5),
                  ],
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
