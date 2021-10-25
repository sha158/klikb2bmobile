import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kgrozer/screens/otp_screen.dart';
import 'package:kgrozer/widgets/Mobile_Entry.dart';
import 'package:kgrozer/widgets/generatebutton.dart';

class mobilenumber extends StatelessWidget {
  const mobilenumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              height: 120,
              width: double.infinity,
              child: Image.asset("images/logo.png"),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              child: Text(
                "proceed with your",
                style: GoogleFonts.openSans(fontSize: 20, color: Colors.grey[700]),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Login",
            style:
                GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          MyTextFromField(hinttext: "Mobile Number", obscureText: false),
          GenerateButton(
              text: "Generate OTP",
             onPressedd: ()=>OtpScreen(),
              )
        ],
      )),
    );
  }
}
