import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

const FontWeight based = FontWeight.bold;

class Lobby extends StatefulWidget {
  @override
  State<Lobby> createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
    {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];
  bool val = true;
  int _currentIndex = 0;
  List<String> routes = ["/home", "/home", "/home", "/profilepage"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(14),
                child: SingleChildScrollView(
                  child: Column(children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 230,
                          child: TextFormField(
                            decoration: InputDecoration(

                                //TODO will back to this and remove the space between thsi 2 widgets

                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 30,
                                ),
                                prefixIcon: IconButton(
                                  onPressed: () {
                                 
                                  },
                                  icon: const Icon(Icons.search),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 119, 118, 118)),
                                hintText: "Search Product",
                                fillColor: const Color(0xFFF3F3F4)),
                          ),
                        ),
                        IconBtnWithCounter(
                          svgSrc: "assets/icons/Cart Icon.svg",
                          numOfitem: 3,
                          press: () {
                            Navigator.pushReplacementNamed(context, "/cart");
                          },
                        ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushReplacementNamed(context, "/cart");
                        //   },
                        //   child: Icon(Icons.shopping_cart,
                        //       color: Color(0xFFC3C3C4)),
                        //   style: ElevatedButton.styleFrom(
                        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //     shape: CircleBorder(),
                        //     padding: EdgeInsets.all(8),
                        //     primary: Color(0xFFF3F3F4),
                        //   ),
                        // ),
                        IconBtnWithCounter(
                          svgSrc: "assets/icons/Bill Icon.svg",
                          numOfitem: 2,
                          press: () {
                            Navigator.pushReplacementNamed(
                                context, "/profilepage");
                          },
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Icon(Icons.notification_add,
                        //       color: Color(0xFFC3C3C4)),
                        //   style: ElevatedButton.styleFrom(
                        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //     shape: CircleBorder(),
                        //     padding: EdgeInsets.all(8),
                        //     primary: Color(0xFFF3F3F4),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      // height: 90,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4A3298),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text.rich(
                         TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(text: "A Summer Surpise\n"),
                            TextSpan(
                              text: "Cashback 20%",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          categories.length,
                          (index) => CategoryCard(
                            icon: categories[index]["icon"],
                            text: categories[index]["text"],
                            press: () {},
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Special for you",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                         
                          },
                          child: const Text(
                            "See More",
                            style: TextStyle(color: Color(0xFFBBBBBB)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SpecialOfferCard(
                              image: "assets/images/Image Banner 2.png",
                              category: "Smartphone",
                              numOfBrands: 18,
                              press: () {},
                            ),
                            SpecialOfferCard(
                              image: "assets/images/Image Banner 3.png",
                              category: "Fashion",
                              numOfBrands: 24,
                              press: () {
                             
                              },
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular Product",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                        
                          },
                          child: const Text(
                            "See More",
                            style: TextStyle(color: Color(0xFFBBBBBB)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: SizedBox(
                                width: 140,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1.02,
                                        child: Container(
                                          padding: const EdgeInsets.all(25),
                                          decoration: BoxDecoration(
                                            color: ColorManager.kSecondaryColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Hero(
                                            tag: "gaming",
                                            child: Image.asset(
                                                "assets/images/ps4_console_white_1.png"),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Ps4 controller",
                                        style: TextStyle(color: Colors.black),
                                        maxLines: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$30",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: ColorManager.kPrimaryColor,
                                            ),
                                          ),
                                          InkWell(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            onTap: () {},
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all((8)),
                                              height: 28,
                                              width: (38),
                                              decoration: BoxDecoration(
                                                color: true // implement it later on
                                                    ? ColorManager.kPrimaryColor
                                                        .withOpacity(0.15)
                                                    : ColorManager.kSecondaryColor
                                                        .withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                "assets/icons/Game Icon.svg",
                                                color: true
                                                    ? const Color(0xFFFF4848)
                                                    : const Color(0xFFDBDEE4),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                width: 140,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1.02,
                                        child: Container(
                                          padding: const EdgeInsets.all(25),
                                          decoration: BoxDecoration(
                                            color: ColorManager.kSecondaryColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Hero(
                                            tag: "jsp",
                                            child: Image.asset(
                                                "assets/images/Image Popular Product 2.png"),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Pants",
                                        style: TextStyle(color: Colors.black),
                                        maxLines: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$29.99",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: ColorManager.kPrimaryColor,
                                            ),
                                          ),
                                          InkWell(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            onTap: () {},
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all((8)),
                                              height: 28,
                                              width: (28),
                                              decoration: BoxDecoration(
                                                color: true
                                                    ? ColorManager.kPrimaryColor
                                                        .withOpacity(0.15)
                                                    : ColorManager.kSecondaryColor
                                                        .withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                "assets/icons/Star Icon.svg",
                                                color: true
                                                    ? const Color(0xFFFF4848)
                                                    : const Color(0xFFDBDEE4),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 150,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1.02,
                                        child: Container(
                                          padding: const EdgeInsets.all(25),
                                          decoration: BoxDecoration(
                                            color: ColorManager.kSecondaryColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Hero(
                                            tag: "my",
                                            child: Image.asset(
                                                "assets/images/Image Popular Product 3.png"),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Helmet",
                                        style:  TextStyle(
                                            color: Colors.black),
                                        maxLines: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$30",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: ColorManager.kPrimaryColor,
                                            ),
                                          ),
                                          InkWell(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            onTap: () {},
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all((8)),
                                              height: 28,
                                              width: (28),
                                              decoration: BoxDecoration(
                                                color: true
                                                    ? ColorManager.kPrimaryColor
                                                        .withOpacity(0.15)
                                                    : ColorManager.kSecondaryColor
                                                        .withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                "assets/icons/Star Icon.svg",
                                                color: false
                                                    ? const Color(0xFFFF4848)
                                                    : const Color(0xFFDBDEE4),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ]),
                ))),
        bottomNavigationBar: CustomNavigationBar(
          iconSize: 28.0,
          scaleFactor: 0.5,
          selectedColor: Colors.red[300],
          strokeColor: Colors.red[400] as Color,
          unSelectedColor: Colors.grey[600],
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(
                AntDesign.home,
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                AntDesign.heart,
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                AntDesign.message1,
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(AntDesign.user),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              getPage(index);
            });
          },
        ));
  }

  void getPage(int index) {
    Navigator.pushNamed(context, routes[index]);
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: (20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: (242),
          height: (100),
          //ToDO to revise this
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all((12)),
            height: (46),
            width: (46),
            decoration: BoxDecoration(
              color: ColorManager.kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: (16),
                width: (16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: const TextStyle(
                      fontSize: (10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
