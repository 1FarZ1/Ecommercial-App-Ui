import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "my_classes.dart";

const ColorTxt = 0xFFBFBFBF;

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

FontWeight based = FontWeight.bold;

class _SignUpState extends State<SignUp> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign in",
          style: TextStyle(color: Color(ColorTxt)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(ColorTxt),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: based),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Sign up with your email or password ",
                style: TextStyle(color: Color(ColorTxt), fontWeight: based)),
            SizedBox(
              height: 5,
            ),
            Text("or continue with your social media",
                style: TextStyle(color: Color(ColorTxt), fontWeight: based)),
            SizedBox(height: 65),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior:FloatingLabelBehavior.always,
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 70,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      print("pressed");
                    },
                    icon: Icon(Icons.mail_outline),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Color(ColorTxt),
                  ),
                  hintText: "  Enter Your Email",
                  fillColor: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                 obscureText: true,
              decoration: InputDecoration(
                      labelText:"Password",
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 70,
                  ),
                   floatingLabelBehavior: FloatingLabelBehavior.always,

                  suffixIcon: IconButton(
                    onPressed: () {
                      print("pressed");
                    },
                    icon: Icon(Icons.lock),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    color: Color(ColorTxt),
                  ),
                  hintText: "  Enter Your Password",
                  fillColor: Colors.white),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                MyWidget(),
                // Text("Rememeber me ",
                //     style: TextStyle(
                //       color: Color(ColorTxt),
                //       fontWeight: based
                //     )),
                SizedBox(width: 95),
                Text("Forget Password",
                    style: TextStyle(
                        color: Color(ColorTxt),
                        decoration: TextDecoration.underline,
                        fontWeight: based)),
              ],
            ),
            SizedBox(height: 30),
            ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 0, 47, 129),
                ),
                SizedBox(width: 20),
                SvgPicture.asset(
                          "assets/icons/google-icon.svg",),
                // Icon(Icons.account_box_rounded,
                //     size: 30, color: Colors.green[800]),
                SizedBox(width: 20),
                 SvgPicture.asset(
                          "assets/icons/twitter.svg",),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account ? ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(ColorTxt),
                  ),
                ),
                //will change this to text button
                Text(
                  "Sign up",
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

