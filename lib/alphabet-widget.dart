import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlphabetWidget extends StatelessWidget {
  TextSpan theSpan(text, style) {
    var textSpan = TextSpan(
      text: text,
      style: style,
    );
    return textSpan;
  }

  int algo;
  int indexRed;
  int indexGreen;
  final _greenStyle;
  final _redStyle;
  final _normalStyle;
  AlphabetWidget(
    this.algo,
    this.indexRed,
    this.indexGreen,
    this._redStyle,
    this._greenStyle,
    this._normalStyle,
  );
  @override
  Widget build(BuildContext context) {
    var alphabets = <String>[];
    for (var i = 97; i <= 122; i++) {
      alphabets.add(String.fromCharCode(i).toUpperCase());
    }
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: algo == 1
          ? Text.rich(TextSpan(children: [
              theSpan(alphabets[0], _normalStyle),
              theSpan(alphabets[1], _normalStyle),
              theSpan(alphabets[2], _normalStyle),
              theSpan(alphabets[3], _normalStyle),
              indexRed == 4
                  ? theSpan(alphabets[4], _redStyle)
                  : theSpan(alphabets[4], _normalStyle),
              indexGreen == 5
                  ? theSpan(alphabets[5], _greenStyle)
                  : theSpan(alphabets[5], _normalStyle),
              theSpan(alphabets[6], _normalStyle),
              indexRed == 7
                  ? theSpan(alphabets[7], _redStyle)
                  : theSpan(alphabets[7], _normalStyle),
              indexGreen == 8
                  ? theSpan(alphabets[8], _greenStyle)
                  : theSpan(alphabets[8], _normalStyle),
              theSpan(alphabets[9], _normalStyle),
              theSpan(alphabets[10], _normalStyle),
              indexRed == 11
                  ? theSpan(alphabets[11], _redStyle)
                  : theSpan(alphabets[11], _normalStyle),
              indexGreen == 12
                  ? theSpan(alphabets[12], _greenStyle)
                  : theSpan(alphabets[12], _normalStyle),
              theSpan(alphabets[13], _normalStyle),
              indexRed == 14
                  ? theSpan(alphabets[14], _redStyle)
                  : theSpan(alphabets[14], _normalStyle),
              indexGreen == 15
                  ? theSpan(alphabets[15], _greenStyle)
                  : theSpan(alphabets[15], _normalStyle),
              theSpan(alphabets[16], _normalStyle),
              theSpan(alphabets[17], _normalStyle),
              theSpan(alphabets[18], _normalStyle),
              theSpan(alphabets[19], _normalStyle),
              theSpan(alphabets[20], _normalStyle),
              theSpan(alphabets[21], _normalStyle),
              theSpan(alphabets[22], _normalStyle),
              theSpan(alphabets[23], _normalStyle),
              theSpan(alphabets[24], _normalStyle),
              theSpan(alphabets[25], _normalStyle),
            ]))
          : Text.rich(TextSpan(children: [
              theSpan(alphabets[0], _normalStyle),
              indexGreen == 1
                  ? theSpan(alphabets[1], _greenStyle)
                  : theSpan(alphabets[1], _normalStyle),
              theSpan(alphabets[2], _normalStyle),
              theSpan(alphabets[3], _normalStyle),
              indexRed == 4
                  ? theSpan(alphabets[4], _redStyle)
                  : theSpan(alphabets[4], _normalStyle),
              theSpan(alphabets[5], _normalStyle),
              theSpan(alphabets[6], _normalStyle),
              indexRed == 7
                  ? theSpan(alphabets[7], _redStyle)
                  : theSpan(alphabets[7], _normalStyle),
              indexGreen == 8
                  ? theSpan(alphabets[8], _greenStyle)
                  : theSpan(alphabets[8], _normalStyle),
              theSpan(alphabets[9], _normalStyle),
              theSpan(alphabets[10], _normalStyle),
              indexRed == 11
                  ? theSpan(alphabets[11], _redStyle)
                  : theSpan(alphabets[11], _normalStyle),
              theSpan(alphabets[12], _normalStyle),
              theSpan(alphabets[13], _normalStyle),
              indexRed == 14
                  ? theSpan(alphabets[14], _redStyle)
                  : theSpan(alphabets[14], _normalStyle),
              theSpan(alphabets[15], _normalStyle),
              theSpan(alphabets[16], _normalStyle),
              indexGreen == 17
                  ? theSpan(alphabets[17], _greenStyle)
                  : theSpan(alphabets[17], _normalStyle),
              theSpan(alphabets[18], _normalStyle),
              theSpan(alphabets[19], _normalStyle),
              indexGreen == 20
                  ? theSpan(alphabets[20], _greenStyle)
                  : theSpan(alphabets[20], _normalStyle),
              theSpan(alphabets[21], _normalStyle),
              theSpan(alphabets[22], _normalStyle),
              theSpan(alphabets[23], _normalStyle),
              indexGreen == 24
                  ? theSpan(alphabets[24], _greenStyle)
                  : theSpan(alphabets[24], _normalStyle),
              theSpan(alphabets[25], _normalStyle),
            ])),
    );
  }
}
