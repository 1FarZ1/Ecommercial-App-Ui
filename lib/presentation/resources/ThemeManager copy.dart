// ignore_for_file: file_names

import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/FontManager.dart';
import 'package:eapp/presentation/resources/ValuesManager.dart';
import 'package:eapp/presentation/resources/stylesManager.dart';
import 'package:flutter/material.dart';


//TODO:CHANGE COLORS
ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.kPrimaryColor,
    primaryColorLight: ColorManager.kPrimaryColor,
    primaryColorDark: ColorManager.kPrimaryColor,
    disabledColor: ColorManager.kPrimaryColor,
    splashColor: ColorManager.kPrimaryColor,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
        color: ColorManager.kwhite,
        shadowColor: ColorManager.kPrimaryColor,
        elevation: AppSize.s4),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.kPrimaryColor,
        elevation: AppSize.s4,
        shadowColor: ColorManager.kPrimaryColor,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: ColorManager.kwhite)),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.kPrimaryColor,
        buttonColor: ColorManager.kPrimaryColor,
        splashColor: ColorManager.kPrimaryColor),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.kPrimaryColor, fontSize: FontSize.s17),
            primary: ColorManager.kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.kPrimaryColor, fontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.kPrimaryColor, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.kPrimaryColor, fontSize: FontSize.s14),
        titleMedium:
            getMediumStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s16),
        titleSmall:
            getRegularStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.kPrimaryColor),
        bodySmall: getRegularStyle(color: ColorManager.kPrimaryColor),
        bodyMedium:
            getRegularStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s12),
        labelSmall:
            getBoldStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s12)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle:
            getRegularStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManager.kPrimaryColor, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.kError),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.kPrimaryColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.kPrimaryColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.kError, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.kPrimaryColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // label style
  );
}
