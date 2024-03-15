import 'package:flutter/material.dart';
import 'package:myshoprrc/cus_widgets/text/cus_text.dart';
import 'package:myshoprrc/single_screen/signupscreen.dart';
import '../cus_widgets/button/cuselevatedbtn.dart';
import '../cus_widgets/decoration/textFieldDec.dart';

class RRCLoginScreen extends StatefulWidget {
  @override
  State<RRCLoginScreen> createState() => RRCLoginScreenState();
}

class RRCLoginScreenState extends State<RRCLoginScreen> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/img_theme3.png',),fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      child: Column(children: [
                        Container(
                            width: double.infinity,
                            child: Image.asset(
                              'assets/icon/ic_rrlogo.png',
                              height: 160,
                            )),
                        GetRRCText(
                          text: 'Welcome Back to Login!',
                          fSize: 26,
                          fWeight: FontWeight.w800,
                          fColor: Colors.blueAccent,
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,boxShadow: [
                            BoxShadow(blurRadius: 5, color: Colors.black87)
                          ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GetRRCTextField(
                                kebType: TextInputType.emailAddress,
                                lText: 'Enter E-Mail.',
                                sIcon: Icon(Icons.email_outlined),
                                sufixText: '@gmail.com',
                              ),
                              GetRRCTextField(
                                  obSecureText: hideText,
                                  lText: 'Enter Password',
                                  sIcon: InkWell(onTap: (){
                                  hideText = ! hideText;
                                  setState(() {
                                  });
                                 },child: Icon(hideText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                                  ),
                              ),
                                  /*sIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isHiden = !isHiden;
                                        });
                                      },
                                      child: Icon(isHiden
                                          ? Icons.remove_red_eye
                                     : Icons.remove_red_eye_outlined))),*/
                              GetRRCText(
                                text: 'Forgot Pasword!',
                                fSize: 14,
                                fWeight: FontWeight.w600,
                                fColor: Colors.purple,
                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   GetElevatedBtn(onTap: (){}, btnName:'  Login  '),
                                   GetElevatedBtn(onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                                   }, btnName:'Sign_up'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GetRRCText(
                          text: 'OR',
                          fColor: Colors.black,
                          fWeight: FontWeight.w400,
                          fSize: 14,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GetRRCText(
                          text: 'Sign Up Using',
                          fColor: Colors.black,
                          fWeight: FontWeight.w400,
                          fSize: 14,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 50,
                          width: 350,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/icon/ic_google.png')),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/icon/ic_facebook.png')),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('assets/icon/ic_twitter.png')),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            )));
  }
}
