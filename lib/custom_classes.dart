import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class IconContainer extends StatelessWidget {
  IconContainer({required this.img, required this.onTap, this.padding,this.height,this.width});
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
        padding: padding ?? EdgeInsets.all(5),
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
  MyTextField({required this.label, required this.hint, required this.icon});
  String label;
  String hint;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28), gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28), gapPadding: 10),
          hintText: hint,
          label: Text(label),
          hintStyle: TextStyle(fontWeight: FontWeight.w500),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              icon,
              color: textColor,
              size: 30,
            ),
          ),
          border: InputBorder.none),
    );
  }
}

class OrangeButton extends StatelessWidget {
  OrangeButton(
      {required this.onTap,
      required this.text,
      this.padding,
      this.height,
      this.width});
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
        padding: padding ?? EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFFF7643),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}
