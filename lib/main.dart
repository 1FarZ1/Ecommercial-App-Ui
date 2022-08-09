import 'package:eapp/Networking/auth.dart';
import 'package:eapp/Screens/cart.dart';
import 'package:eapp/Screens/intro.dart';
import 'package:eapp/Screens/lobby.dart';
import 'package:eapp/Screens/password_reset_page.dart';
import 'package:eapp/Screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:eapp/Screens/SignUp.dart';
import 'package:eapp/Screens/profile.dart';
import 'package:eapp/Screens/verif.dart';
import 'package:provider/provider.dart';
import 'my_classes.dart';
import 'package:eapp/Screens/login_success_page.dart';
import 'package:eapp/Screens/profile_page.dart';
import 'package:eapp/Screens/login_page.dart';
import 'package:eapp/Screens/register.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/intro", routes: {
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
