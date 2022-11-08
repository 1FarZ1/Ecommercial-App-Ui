import 'package:eapp/data/Networking/auth.dart';
import 'package:eapp/presentation/cart/view/cart.dart';
import 'package:eapp/presentation/Splash/view/intro.dart';
import 'package:eapp/presentation/home/view/lobby.dart';
import 'package:eapp/presentation/password_reset/view/password_reset_page.dart';
import 'package:eapp/Screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eapp/Screens/SignUp.dart';
import 'package:eapp/Screens/profile.dart';
import 'package:eapp/presentation/verifScreen/view/verif.dart';
import 'package:provider/provider.dart';
import 'package:eapp/presentation/Login/view/login_success_page.dart';
import 'package:eapp/presentation/profileScreen/view/profile_page.dart';
import 'package:eapp/presentation/Login/view/login_page.dart';
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
