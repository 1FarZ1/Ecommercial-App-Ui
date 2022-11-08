// ignore_for_file: constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(const MyApp());

enum ThemeStyle {
  Dribbble,
  Light,
  NoElevation,
  AntDesign,
  BorderRadius,
  FloatingBar,
  NotificationBadge,
  WithTitle,
  BlurEffect
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  late String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late ThemeStyle value;
  ThemeStyle _currentStyle = ThemeStyle.NotificationBadge;

  final List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  final List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Notification badge'),
              leading: Radio(
                value: ThemeStyle.NotificationBadge,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Dribbble'),
              leading: Radio(
                value: ThemeStyle.Dribbble,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Light'),
              leading: Radio(
                value: ThemeStyle.Light,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('No elevation'),
              leading: Radio(
                value: ThemeStyle.NoElevation,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Custom Icon from Ant Design'),
              leading: Radio(
                value: ThemeStyle.AntDesign,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('With border radius'),
              leading: Radio(
                value: ThemeStyle.BorderRadius,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Floating Bar'),
              leading: Radio(
                value: ThemeStyle.FloatingBar,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('With Title'),
              leading: Radio(
                value: ThemeStyle.WithTitle,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Blur Effect'),
              leading: Radio(
                value: ThemeStyle.BlurEffect,
                groupValue: _currentStyle,
                onChanged: (value) {
                  setState(() {
                    _currentStyle = value as ThemeStyle;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    switch (_currentStyle) {
      case ThemeStyle.Dribbble:
        return _buildOriginDesign();
      case ThemeStyle.Light:
        return _buildLightDesign();
      case ThemeStyle.AntDesign:
        return _buildCustomIconDesign();
      case ThemeStyle.BorderRadius:
        return _buildBorderRadiusDesign();
      case ThemeStyle.FloatingBar:
        return _buildFloatingBar();
      case ThemeStyle.NoElevation:
        return _buildNoElevation();
      case ThemeStyle.NotificationBadge:
        return _buildNotificationBadge();
      case ThemeStyle.WithTitle:
        return _buildTitle();
      case ThemeStyle.BlurEffect:
        return _buildBlurEffect();
      default:
        return _buildOriginDesign();
    }
  }

  Widget _buildTitle() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff040307),
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
          title: const Text("Home"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: const Text("Cart"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.lightbulb_outline),
          title: const Text("Explore"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
          title: const Text("Search"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
          title: const Text("Me"),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildNotificationBadge() {
  
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff040307),
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
          badgeCount: _badgeCounts[0],
          showBadge: _badgeShows[0],
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_bag),
          badgeCount: _badgeCounts[1],
          showBadge: _badgeShows[1],
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.lightbulb_outline),
          badgeCount: _badgeCounts[2],
          showBadge: _badgeShows[2],
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
          badgeCount: _badgeCounts[3],
          showBadge: _badgeShows[3],
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
          badgeCount: _badgeCounts[4],
          showBadge: _badgeShows[4],
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _badgeShows[index] = false;
        });
      },
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: const Color(0xff6c788a),
      backgroundColor: const Color(0xff040307),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildLightDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff040307),
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildNoElevation() {
    return CustomNavigationBar(
      elevation: 0.0,
      iconSize: 30.0,
      selectedColor: const Color(0xff625aff),
      strokeColor: const Color(0xff625aff),
      unSelectedColor: Colors.white,
      backgroundColor: const Color(0xffa9a5f2),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildCustomIconDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff0c18fb),
      strokeColor: const Color(0x300c18fb),
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
            AntDesign.shoppingcart,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.cloudo,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(AntDesign.search1),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.user,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildBorderRadiusDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff0c18fb),
      strokeColor: const Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: const Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.home,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.shoppingcart,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.cloudo,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.search1,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.user,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildFloatingBar() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff0c18fb),
      strokeColor: const Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: const Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.home,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.shoppingcart,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.cloudo,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.search1,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.user,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      isFloating: true,
    );
  }

  Widget _buildBlurEffect() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.black,
      borderRadius: const Radius.circular(20.0),
      blurEffect: true,
      opacity: 0.8,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.home,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.shoppingcart,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.cloudo,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(AntDesign.search1),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            AntDesign.user,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      isFloating: true,
    );
  }
}
