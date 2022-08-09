import 'package:flutter/material.dart';
import '../custom_classes.dart';
import '../constants.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Forgot Password",
          style: TextStyle(color: textColor),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
              padding: EdgeInsets.all(20),
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Please enter your email and we will send",
                  style: TextStyle(fontSize: 15, color: textColor),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "you a link to return to your account",
                  style: TextStyle(fontSize: 15, color: textColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 80,
                ),
                MyTextField(
                    label: "Email",
                    hint: "Enter your email",
                    icon: Icons.mail_outline),
                SizedBox(
                  height: 80,
                ),
                OrangeButton(onTap: () {}, text: "Continue"),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: textColor, fontSize: 20),
                    ),
                    GestureDetector(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xFFFF7643), fontSize: 20),
                    ))
                  ],
                )
              ],
            ),
    );
  }
}
