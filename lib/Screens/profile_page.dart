import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:eapp/presentation/resources/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3;
  List<String> routes = ["/home", "/favorite", "/message", "/profilepage"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: TextStyle(color: ColorManager.textColor),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          AssetImage("assets/images/Profile Image.png"),
                    ),
                    IconContainer(
                      img: "Camera Icon.svg",
                      onTap: () {},
                      padding: const EdgeInsets.all(7),
                      height: 45,
                      width: 45,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomCardButton(
                  text: "My Account",
                  icon: "User Icon.svg",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomCardButton(
                    icon: "Bell.svg", text: "Notifications", onTap: () {}),
                const SizedBox(
                  height: 15,
                ),
                CustomCardButton(
                    icon: "Settings.svg", text: "Settings", onTap: () {}),
                const SizedBox(
                  height: 15,
                ),
                CustomCardButton(
                    icon: "Question mark.svg",
                    text: "Help Center",
                    onTap: () {}),
                const SizedBox(
                  height: 15,
                ),
                CustomCardButton(
                    icon: "Log out.svg", text: "Log Out", onTap: () {}),
              ],
            ),
          ],
        ),
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
  // bottomNavigationBar: Container(
  //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  //   height: 75,
  //   decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(30), topRight: Radius.circular(30))),
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       BottumBarButtton(
  //         icon: "Shop Icon.svg",
  //         onTap: () {},
  //         isSelected: false,
  //       ),
  //       BottumBarButtton(
  //         icon: "Heart Icon.svg",
  //         onTap: () {},
  //         isSelected: false,
  //       ),
  //       BottumBarButtton(
  //         icon: "Chat bubble Icon.svg",
  //         onTap: () {},
  //         isSelected: false,
  //       ),
  //       BottumBarButtton(
  //         icon: "User Icon.svg",
  //         onTap: () {},
  //         isSelected: true,
  //       ),
  //     ],
  //   ),
  // ),

}

// class BottumBarButtton extends StatelessWidget {
//   BottumBarButtton({required this.icon, required this.onTap, required this.isSelected});
//   String icon;
//   VoidCallback onTap;
//   bool isSelected;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: SvgPicture.asset(
//         "assets/icons/$icon",
//         color: isSelected ? orange : Color(0xffB6B6B6),
//       ),
//       onTap: onTap,
//     );
//   }
// }

