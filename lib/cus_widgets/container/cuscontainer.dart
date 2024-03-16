import 'package:flutter/material.dart';

class Cus_Container extends StatelessWidget {
  double? height;
  double? width;
  var brRadi;
  Color? ccolor;
  Widget child;

  Cus_Container({this.height,this.width,this.brRadi,this.ccolor,required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.symmetric(vertical: 4,horizontal: 5),
        padding : EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      height: height!,
      width: width!,
      decoration: BoxDecoration(color: ccolor!,
      borderRadius: brRadi!,
      boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 3,offset: Offset(2,4))]),
    );
  }
}
