// ignore_for_file: file_names, non_constant_identifier_names, constant_identifier_names


// ignore: constant_identifier_names
import 'package:flutter/material.dart';

enum LanguageType  { 
  ENGLISH,Arabic }
const String AssetPathLocalisation = "assets/translations";
const Locale English_Local = Locale('en', 'US');
const Locale Arabic_Local = Locale('ar', 'SA');

extension LanguageTypeExtension on LanguageType {
  String get LanguageName {
    switch (this) {
      case LanguageType.ENGLISH:
        return "en";
      case LanguageType.Arabic:
        return "ar";
    }
  }
}


