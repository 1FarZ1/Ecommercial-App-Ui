// ignore_for_file: must_be_immutable

import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// An Container With An Icon
class IconContainer extends StatelessWidget {
  IconContainer(
      {Key? key,
      required this.img,
      required this.onTap,
      this.padding,
      this.height,
      this.width})
      : super(key: key);
  String img;
  EdgeInsets? padding;
  void Function() onTap;
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(5),
        height: height ?? 40,
        width: width ?? 40,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
        child: SvgPicture.asset("assets/icons/$img"),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField(
      {Key? key, required this.label, required this.hint, required this.icon})
      : super(key: key);
  String label;
  String hint;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28), gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28), gapPadding: 10),
          hintText: hint,
          label: Text(label),
          hintStyle: const TextStyle(fontWeight: FontWeight.w500),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              icon,
              color: ColorManager.textColor,
              size: 30,
            ),
          ),
          border: InputBorder.none),
    );
  }
}

class OrangeButton extends StatelessWidget {
  OrangeButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.padding,
      this.height,
      this.width})
      : super(key: key);
  String text;
  double? height;
  double? width;
  void Function() onTap;
  EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding ?? const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFFF7643),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}

class CustomCardButton extends StatelessWidget {
  CustomCardButton(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);
  String icon;
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/$icon",
              color: ColorManager.orange,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.textColor),
            )),
            SvgPicture.asset(
              "assets/icons/arrow_right.svg",
              color: ColorManager.textColor,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
