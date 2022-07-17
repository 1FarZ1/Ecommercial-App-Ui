import 'custom_classes.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

const ColorTxt = 0xFFBFBFBF;

class LoginSuccessPage extends StatefulWidget {
  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF8F9F9),
        title: Text(
          "Login Success",
          style: TextStyle(color: textColor),
        ),
        elevation: 0,
        leading: SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage("assets/images/success.png")),
            Text(
              "Login Success",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            OrangeButton(
              padding: EdgeInsets.fromLTRB(24, 20, 23, 20),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/home");
              },
              text: "Back to home",
              width: 230,
            ),
          ],
        ),
      ),
    );
  }
}
