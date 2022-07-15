import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'SignUp.dart';
import 'profile.dart';
import 'verif.dart';
import 'my_classes.dart';
import 'lobby.dart';
import 'cart.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/verif", routes: {
    "/": (context) => SignUp(),
    "/profile": (context) => Profile(),
    "/verif": (context) => Verification(),
    "/test": (context) => PinPutTest(),
    "/home": (context) => Lobby(),
    '/cart': (context) => Cart(),
  }));
}
