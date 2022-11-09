import 'package:eapp/presentation/Splash/view/intro.dart';
import 'package:eapp/presentation/resources/StringManager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    // switch (settings.name) {
    //   case Routes.splashRoute:
    return MaterialPageRoute(builder: (_) => const Intro());
    // case Routes.loginRoute:
    //   // initLoginModule();
    //   return MaterialPageRoute(builder: (_) => const LoginView());
    // case Routes.onBoardingRoute:
    //   return MaterialPageRoute(builder: (_) => const OnBoardingView());
    // case Routes.registerRoute:
    //   // initRegisterModule();
    //   return MaterialPageRoute(builder: (_) => const RegisterView());
    // case Routes.forgotPasswordRoute:
    //   // initForgetPasswordModule();
    //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
    // case Routes.mainRoute:
    //   // initHomeModule();
    //   return MaterialPageRoute(builder: (_) => const MainView());
    // case Routes.storeDetailsRoute:
    //   // initStoreDetailsModule();
    //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());
    // default:
    //   return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound.trim()),
              ),
              body: Center(child: Text(AppStrings.noRouteFound.trim())),
            ));
  }
}
