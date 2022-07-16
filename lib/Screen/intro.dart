import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kAnimationDuration = Duration(milliseconds: 200);
const ColorTxt = 0xFFBFBFBF;

class Intro extends StatefulWidget {
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
                  padding: EdgeInsets.symmetric(
                      horizontal: (20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          Data.length,
                          (index) => dots(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      //spacer with expanded
                         ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
              ),
                      ),
                      Spacer(),
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
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: count == index ? 20 : 6,
      decoration: BoxDecoration(
        color: count == index ? kPrimaryColor : Color(0xFFD8D8D8),
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
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: (36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
        Image.asset(
          image!,
          height: (265),
          width: (235),
        ),
      ],
    );
  }
}