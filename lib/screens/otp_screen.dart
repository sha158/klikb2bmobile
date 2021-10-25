import 'dart:ui';

import 'package:flutter/material.dart';



import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:kgrozer/screens/main_home.dart';
import 'package:kgrozer/widgets/generatebutton.dart';


class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Wrap(children: [
                    BuildTopPart()
                  ], ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Verification Code",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 65),
                    child: Text(
                      "Please type the verification code sent \nto +91 2983873462",
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: OtpTextField(
                        numberOfFields: 4,
                        borderColor: Color(0xFF512DA8),
                        showFieldAsBox: true,
                      )
                    )
                  ),
                  Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: GenerateButton(text: "proceed", onPressedd: ()=>home())
    )
                    
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuildTopPart() {
  return Column(
    children: [
      Image.asset("images/logo.png"),
    ],
  );
}


