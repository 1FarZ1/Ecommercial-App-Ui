import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/Widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool remembered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Sign In",
          style: TextStyle(color: ColorManager.textColor),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Welcome Back",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        Text(
          "Sign in with your email and password",
          style: TextStyle(fontSize: 15, color: ColorManager.textColor),
          textAlign: TextAlign.center,
        ),
        Text(
          "or continue with your social media",
          style: TextStyle(fontSize: 15, color: ColorManager.textColor),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        MyTextField(
          label: "Email",
          hint: "Enter your email",
          icon: Icons.mail_outline,
        ),
        const SizedBox(
          height: 20,
        ),
        MyTextField(
            label: "Password",
            hint: "Enter your password",
            icon: Icons.lock_outline),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: remembered,
                    onChanged: (value) {
                      setState(() {
                        remembered = !remembered;
                      });
                    }),
                Text("Remember me",
                    style: TextStyle(
                      color: ColorManager.textColor,
                    )),
              ],
            ),
            GestureDetector(
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    color: ColorManager.textColor,
                    decoration: TextDecoration.underline),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/reset");
              },
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        OrangeButton(
          onTap: () {},
          text: "Continue",
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(
              img: "google-icon.svg",
              onTap: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            IconContainer(
              img: "facebook-2.svg",
              onTap: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            IconContainer(
              img: "twitter.svg",
              onTap: () {},
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(color: ColorManager.textColor, fontSize: 20),
            ),
            GestureDetector(
                child: Text(
              "Sign Up",
              style: TextStyle(color: ColorManager.orange, fontSize: 20),
            ))
          ],
        )
      ]),
    );
  }
}
