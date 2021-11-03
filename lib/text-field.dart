import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hint;
  TextInputType myKeyboardType;
  double marginTop;
  double marginBottom;
  double marginRight;
  double marginLeft;
  static var myController1 = TextEditingController();
  static var myController2 = TextEditingController();
  static var myController3 = TextEditingController();

  var wichController;
  MyTextField(
    this.hint,
    this.myKeyboardType,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.wichController,
  );
  @override
  Widget build(BuildContext context) {
    //var myController3 = TextEditingController(text: MyButtonState.s);
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        right: marginRight,
        left: marginLeft,
      ),
      child: TextField(
        minLines: 1,
        maxLines: 2,
        decoration: InputDecoration(
          hintText: hint,
        ),
        keyboardType: myKeyboardType,
        style: TextStyle(
          fontSize: 25,
        ),
        controller: wichController == 1
            ? myController1
            : wichController == 2
                ? myController2
                : myController3,
      ),
    );
  }
}
