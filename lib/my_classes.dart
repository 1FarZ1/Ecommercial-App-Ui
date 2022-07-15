import "package:flutter/material.dart";
import 'package:pinput/pinput.dart';

const ColorTxt = 0xFFBFBFBF;

class PinPutTest extends StatefulWidget {
  @override
  State<PinPutTest> createState() => _PinPutTestState();
}

class _PinPutTestState extends State<PinPutTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: MyWidget(),
      ),
    ));
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool rememberMe = false;

  void _onRememberMeChanged(newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          print('he is');
        } else {
          print('he is not');
        }
      });

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),Text("Remember me",style: TextStyle(color:Color(0xFFBFBFBF),fontWeight: FontWeight.bold,fontSize: 15),),
    ]);
  }
}


