import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/Widgets.dart';
import 'package:flutter/material.dart';


class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
          style: TextStyle(color: ColorManager.KTextColor),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Forgot Password",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Text(
            "Please enter your email and we will send",
            style: TextStyle(fontSize: 15, color:  ColorManager.KTextColor),
            textAlign: TextAlign.center,
          ),
          Text(
            "you a link to return to your account",
            style: TextStyle(fontSize: 15, color:  ColorManager.KTextColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          MyTextField(
              label: "Email",
              hint: "Enter your email",
              icon: Icons.mail_outline),
          const SizedBox(
            height: 80,
          ),
          OrangeButton(onTap: () {}, text: "Continue"),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(color:  ColorManager.KTextColor, fontSize: 20),
              ),
              GestureDetector(
                  child: const Text(
                "Sign Up",
                style:  TextStyle(color: Color(0xFFFF7643), fontSize: 20),
              ))
            ],
          )
        ],
      ),
    );
  }
}
