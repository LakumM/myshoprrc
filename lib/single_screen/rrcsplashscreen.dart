

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myshoprrc/cus_widgets/text/cus_text.dart';
import 'package:myshoprrc/single_screen/loginscreen.dart';

class RRCSplashScreen extends StatefulWidget {

  @override
  State<RRCSplashScreen> createState() => _RRCSplashScreenState();
}

class _RRCSplashScreenState extends State<RRCSplashScreen> {
  @override
  initState() {
    Timer(const Duration(seconds: 2), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RRCLoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/img_theme3.png'),fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
        Container(margin: EdgeInsets.only(top: 120,bottom:11),
            child: Image.asset('assets/icon/ic_rrlogo.png')),
        GetRRCText(
          text: 'Welcome ',
          fColor: Colors.blue.shade400,
          fSize: 36,
          fWeight: FontWeight.w600,
        ),
        GetRRCText(
          text: ' To ',
          fColor: Colors.blue.shade400,
          fSize: 28,
          fWeight: FontWeight.w600,
        ),
          GetRRCText(
            text: 'Raj Rajeshvari Computer',
            fColor: Colors.blue.shade500,
            fSize: 34,
            fWeight: FontWeight.w600,
          ),
                  ],
                ),
      ),
    );
  }
}
