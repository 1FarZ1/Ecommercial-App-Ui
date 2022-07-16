import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'SignUp.dart';
import 'profile.dart';
import 'verif.dart';
import 'my_classes.dart';
import 'lobby.dart';
import 'cart.dart';
import 'Screen/intro.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/intro", routes: {
    "/": (context) => SignUp(),
    "/profile": (context) => Profile(),
    "/verif": (context) => Verification(),
    "/home": (context) => Lobby(),
    '/cart': (context) => CartP(),
    '/intro':(context) => Intro(),
  }));
}
