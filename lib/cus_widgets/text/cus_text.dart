import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetRRCText extends StatelessWidget {
  String? text;
  double fSize;
  dynamic fWeight;
  Color fColor;

  GetRRCText({required this.text,this.fColor=Colors.blue,this.fWeight=FontWeight.bold,this.fSize=12});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(
        fontSize:fSize,
        fontWeight:fWeight,
        color:fColor,
        shadows: [Shadow(blurRadius: 5,color: Colors.black45,)]));
  }
}

