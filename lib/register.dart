import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "my_classes.dart";

const ColorTxt = 0xFFBFBFBF;

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

FontWeight based = FontWeight.bold;

class _RegisterState extends State<Register> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign Up",
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
              "Register Account",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: based),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Complete your details or continue ",
                style: TextStyle(color: Color(ColorTxt), fontWeight: based)),
            SizedBox(
              height: 5,
            ),
            Text("with your social media",
                style: TextStyle(color: Color(ColorTxt), fontWeight: based)),
            SizedBox(height: 33),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
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
              height: 35,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
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
              height: 35,
            ),
             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
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
            SizedBox(height: 40),
            ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/profile");
                },
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/facebook-2.svg",
                ),
                SizedBox(width: 30),
                SvgPicture.asset(
                  "assets/icons/google-icon.svg",
                ),
                // Icon(Icons.account_box_rounded,
                //     size: 30, color: Colors.green[800]),
                SizedBox(width: 30),
                SvgPicture.asset(
                  "assets/icons/twitter.svg",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                            text:"by continuing you confirm that you agree\n",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(ColorTxt),
                      ),),
                      TextSpan(
                          text:"          With our terms and conditions",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(ColorTxt),)
                      )
                    ]
                  )
                  
                  ),

                //will change this to text button
      
          ],
        ),
      )),
    );
  }
}
