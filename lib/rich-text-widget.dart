import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyRichTextWidget extends StatelessWidget {
  TextSpan theSpan(text, style) {
    var textSpan = TextSpan(
      text: text,
      style: style,
    );
    return textSpan;
  }

  int redIndex;
  String span1;
  String span2;
  String span3;
  String span4;
  String span5;

  final _redStyle;
  final _normalStyle;
  MyRichTextWidget(
    this.span1,
    this.span2,
    this.span3,
    this.span4,
    this.span5,
    this.redIndex,
    this._redStyle,
    this._normalStyle,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text.rich(TextSpan(children: [
        redIndex == 0
            ? theSpan(span1, _redStyle)
            : theSpan(span1, _normalStyle),
        redIndex == 1
            ? theSpan(span2, _redStyle)
            : theSpan(span2, _normalStyle),
        redIndex == 2
            ? theSpan(span3, _redStyle)
            : theSpan(span3, _normalStyle),
        redIndex == 3
            ? theSpan(span4, _redStyle)
            : theSpan(span4, _normalStyle),
        redIndex == 4
            ? theSpan(span5, _redStyle)
            : theSpan(span5, _normalStyle),
      ])),
    );
  }
}
