import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
const kPrimaryColor = Color(0xFFFF7643);
const kAnimationDuration = Duration(milliseconds: 200);

const ColorTxt = 0xFFBFBFBF;
class Intro2 extends StatelessWidget {
  int currentPage=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(20.0,3,20,5),
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.fromLTRB(90,100,90,10),
              child:Text("TOKOTO",style: TextStyle(color: Color(0xffFC835E),fontSize:40,fontWeight:FontWeight.bold),)
            ),
         
            
            Text("We help people conect with store \naround United State of America",style:TextStyle(fontSize:17,fontWeight:FontWeight.w900,color:Color(ColorTxt))),




          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(

              ),
              child:Image.asset("assets/images/splash_2.png")
            ),
          ),
          SizedBox(height: 30),
            Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDot(0),
                        buildDot(1),
                        buildDot(2),
                        ]
                    ),
    SizedBox(height: 90),
                      ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      )
    );
  }
  AnimatedContainer buildDot(int? index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
