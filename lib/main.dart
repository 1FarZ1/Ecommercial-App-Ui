import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'SignUp.dart';
import 'profile.dart';
import 'verif.dart';
import 'my_classes.dart';
import 'lobby.dart';
import 'cart.dart';
import 'Screen/intro.dart';
import 'login_success_page.dart';
import 'password_reset_page.dart';
import 'profile_page.dart';
import 'login_page.dart';
import 'register.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/intro", routes: {
    "/": (context) => SignUp(),
    "/profile": (context) => Profile(),
    "/verif": (context) => Verification(),
    "/home": (context) => Lobby(),
    '/cart': (context) => CartP(),
    '/intro': (context) => Intro(),
    '/success': (context) => LoginSuccessPage(),
    '/reset': (context) => ResetPasswordPage(),
    '/profilepage': (context) => ProfilePage(),
    '/register': (context) => Register(),
    // '/login':(context)=>LoginPage(),
  }));
}
