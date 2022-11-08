import 'package:eapp/data/Networking/auth.dart';
import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "../my_classes.dart";

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
        title: const Text(
          "Sign in",
          style: TextStyle(color: ColorManager.ColorTxt),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: ColorManager.ColorTxt,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: based),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Sign up with your email or password ",
                style:
                    TextStyle(color: const Color(ColorTxt), fontWeight: based)),
            const SizedBox(
              height: 5,
            ),
            Text("or continue with your social media",
                style:
                    TextStyle(color: const Color(ColorTxt), fontWeight: based)),
            const SizedBox(height: 65),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 70,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mail_outline),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: const BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: ColorManager.ColorTxt,
                  ),
                  hintText: "  Enter Your Email",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 70,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: const BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: ColorManager.ColorTxt,
                  ),
                  hintText: "  Enter Your Password",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                MyWidget(),
                const SizedBox(width: 95),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/reset");
                  },
                  child: Text("Forget Password",
                      style: TextStyle(
                          color: const Color(ColorTxt),
                          decoration: TextDecoration.underline,
                          fontWeight: based)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {
                  AuthManager().SignInAnonmy();
                  Navigator.pushReplacementNamed(context, "/success");
                },
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.facebook_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 0, 47, 129),
                ),
                const SizedBox(width: 20),
                SvgPicture.asset(
                  "assets/icons/google-icon.svg",
                ),
                // Icon(Icons.account_box_rounded,
                //     size: 30, color: Colors.green[800]),
                const SizedBox(width: 20),
                SvgPicture.asset(
                  "assets/icons/twitter.svg",
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account ? ",
                  style: TextStyle(
                    fontSize: 15,
                    color:  ColorManager.ColorTxt,
                  ),
                ),
                //will change this to text button
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Text(
                      "Sign up",
                      style:
                          TextStyle(color: ColorManager.orange, fontSize: 15),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
