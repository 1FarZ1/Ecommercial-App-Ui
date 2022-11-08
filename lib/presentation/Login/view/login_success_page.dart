import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/Widgets.dart';
import 'package:flutter/material.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);

  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF8F9F9),
        title:  Text(
          "Login Success",
          style: TextStyle(color: ColorManager.KTextColor),
        ),
        elevation: 0,
        leading: const SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(image: AssetImage("assets/images/success.png")),
            const Text(
              "Login Success",
              style:  TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            OrangeButton(
              padding: const EdgeInsets.fromLTRB(24, 20, 23, 20),
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
