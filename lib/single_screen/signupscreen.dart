import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshoprrc/cus_widgets/button/cuselevatedbtn.dart';
import 'package:myshoprrc/cus_widgets/decoration/textFieldDec.dart';

import '../product_screen/mainprocatlog.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ishidPas=true;
  bool ishidCPas=true;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        image: DecorationImage(
        image: AssetImage('assets/images/img_theme3.png'),fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 11,horizontal: 10),
          child: Column(
            children: [
              GetRRCTextField(lText: 'Full Name'),
              SizedBox(height: 11),
              GetRRCTextField(lText: 'E-mail'),
              SizedBox(height: 11),
              GetRRCTextField(lText: 'Mobile Number'),
              SizedBox(height: 11),
              GetRRCTextField(obSecureText: ishidPas,lText: 'Password',sIcon: InkWell(onTap: (){
                ishidPas = ! ishidPas;
                setState(() {
                });
              },child: Icon(ishidPas ? Icons.remove_red_eye : Icons.remove_red_eye_outlined))),
              SizedBox(height: 11),
              GetRRCTextField(obSecureText: ishidCPas,lText: 'Confirm Password',sIcon: InkWell(onTap: (){
                ishidCPas = ! ishidCPas;
                setState(() {
                });
              },child: Icon(ishidCPas ? Icons.remove_red_eye : Icons.remove_red_eye_outlined))),
              SizedBox(height: 11),
              GetElevatedBtn(btnName: 'Create your Account',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RRCMainProCatlog()));
              },)
            ],
          ),
        ),
      ),
    );
  }
}
