import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../my_classes.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const ColorTxt = 0xFFBFBFBF;
List<Product> items = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Head Helmet",
    price: 16.20,
    description:
        "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 3.1,
    isFavourite: false,
  )
];

List<Cart> demoCarts = [
  Cart(product: items[0], numOfItem: 2),
  Cart(product: items[1], numOfItem: 1),
  Cart(product: items[2], numOfItem: 1),
  Cart(product: items[3], numOfItem: 3),
  Cart(product: items[4], numOfItem: 2),
];

class CartP extends StatefulWidget {
  @override
  State<CartP> createState() => _CartPState();
}

class _CartPState extends State<CartP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text("${demoCarts.length} items",
                // ignore: unnecessary_const
                style: const TextStyle(color: const Color(ColorTxt), fontSize: 14))
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          // ignore: unnecessary_const
          color: const Color(ColorTxt),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: demoCarts.length,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Dismissible(
                    key: Key(demoCarts[index].product.id.toString()),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        demoCarts.removeAt(index);
                      });
                    },
                    background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE6E6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          const Spacer(),
                          SvgPicture.asset("assets/icons/Trash.svg"),
                        ],
                      ),
                    ),
                    child: CartCard(cart: demoCarts[index]),
                  ),
                ))),
      )

      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15),
      //   child: Text("Wano Store ",
      //       style: TextStyle(
      //           color: Color(ColorTxt),
      //           fontWeight: FontWeight.w900,
      //           fontSize: 17)),
      // ),

      // Padding(
      //   padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
      //   child: Text("Sportz Store ",
      //       style: TextStyle(
      //           color: Color(ColorTxt),
      //           fontWeight: FontWeight.w900,
      //           fontSize: 17)),
      // ),

      ,
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        // height: 174,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
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
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                  ),
                  const Spacer(),
                  const Text("Add voucher code"),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kTextColor,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
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
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
