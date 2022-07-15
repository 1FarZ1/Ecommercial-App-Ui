import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'my_classes.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const ColorTxt = 0xFFBFBFBF;

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(ColorTxt),
        ),
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
            child: Text("4 items", style: TextStyle(color: Color(ColorTxt)))),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15),
          child: Text("Wano Store ",
              style: TextStyle(
                  color: Color(ColorTxt),
                  fontWeight: FontWeight.w900,
                  fontSize: 17)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child: Image.asset(
                            "assets/images/ps4_console_white_1.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Wirless Controller\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Ps4",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$29.9   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x1",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child:
                            Image.asset("assets/images/wireless headset.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Logitech Zone Wireless \n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Headset",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$90.00  ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x1",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Text("Sportz Store ",
              style: TextStyle(
                  color: Color(ColorTxt),
                  fontWeight: FontWeight.w900,
                  fontSize: 17)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "2",
                        child: Image.asset("assets/images/shoes2.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Nike Joyride Run Flyknit\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "-Men's Running",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$131.18   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x1",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 13, 15, 0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child: Image.asset("assets/images/tshirt.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Addidas Tshirt Run\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Men's Tshirt",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$69.9   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x2",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 13, 15, 0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child: Image.asset("assets/images/tshirt.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Addidas Tshirt Run\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Men's Tshirt",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$69.9   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x2",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 13, 15, 0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child: Image.asset("assets/images/tshirt.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Addidas Tshirt Run\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Men's Tshirt",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$69.9   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x2",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 13, 15, 0),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    print("tapped");
                  },
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: "1",
                        child: Image.asset("assets/images/tshirt.png"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Color(ColorTxt)),
                      children: [
                        TextSpan(
                            text: "Addidas Tshirt Run\n",
                            style: TextStyle(
                                color: Color(ColorTxt),
                                fontWeight: FontWeight.w900)),
                        TextSpan(
                          text: "Men's Tshirt",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "\$69.9   ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    TextSpan(
                        text: "x2",
                        style: TextStyle(
                            color: Color(ColorTxt),
                            fontWeight: FontWeight.w700))
                  ])),
                ],
              ),
            ],
          ),
        ),
      ])),
      bottomSheet:  Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}