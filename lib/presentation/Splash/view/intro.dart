// ignore_for_file: non_constant_identifier_names

import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/const.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int count = 0;

  List<Map<String, String>> Data = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    count = value;
                  });
                },
                itemCount: Data.length,
                itemBuilder: (context, index) => SplashContent(
                  image: Data[index]["image"],
                  text: Data[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: (20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        Data.length,
                        (index) => dots(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    //spacer with expanded
                    ButtonTheme(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFF77546),
                          fixedSize: const Size(300, 55),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('Continue'),
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer dots({int? index}) {
    return AnimatedContainer(
      duration: Consts.kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: count == index ? 20 : 6,
      decoration: BoxDecoration(
        color: count == index
            ? ColorManager.kPrimaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
         Text(
          "TOKOTO",
          style:  TextStyle(
            fontSize: (36),
            color: ColorManager.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
        Image.asset(
          image!,
          height: (265),
          width: (235),
        ),
      ],
    );
  }
}
