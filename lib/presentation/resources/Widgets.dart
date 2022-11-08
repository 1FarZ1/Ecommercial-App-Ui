// ignore_for_file: must_be_immutable

import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:flutter/cupertino.dart';
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

// Delete An Item From a list by sliding Widget
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton.filled(
            child: const Text('Enter new page'),
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (c) => const SwipeActionPage()));
            }),
      ),
    );
  }
}

class Model {
  String id = UniqueKey().toString();
  int index = 0;

  @override
  String toString() {
    return index.toString();
  }
}

class SwipeActionPage extends StatefulWidget {
  const SwipeActionPage({Key? key}) : super(key: key);

  @override
  _SwipeActionPageState createState() => _SwipeActionPageState();
}

class _SwipeActionPageState extends State<SwipeActionPage> {
  List<Model> list = List.generate(30, (index) {
    return Model()..index = index;
  });

  late SwipeActionController controller;

  @override
  void initState() {
    super.initState();
    controller = SwipeActionController(selectedIndexPathsChangeCallback:
        (changedIndexPaths, selected, currentCount) {
      setState(() {});
    });
  }

  Widget bottomBar() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: CupertinoButton.filled(
                  padding: const EdgeInsets.only(),
                  child: const Text('open cell at 2'),
                  onPressed: () {
                    controller.openCellAt(
                        index: 2, trailing: true, animated: true);
                  }),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: CupertinoButton.filled(
                  padding: const EdgeInsets.only(),
                  child: const Text('switch edit mode'),
                  onPressed: () {
                    controller.toggleEditingMode();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      appBar: CupertinoNavigationBar(
        middle: CupertinoButton.filled(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            minSize: 0,
            child: const Text('deselect all', style: TextStyle(fontSize: 22)),
            onPressed: () {
              controller.deselectAll();
            }),
        leading: CupertinoButton.filled(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            minSize: 0,
            child: Text(
                'delete cells (${controller.getSelectedIndexPaths().length})',
                style: const TextStyle(color: Colors.white)),
            onPressed: () {
              ///获取选取的索引集合
              List<int> selectedIndexes = controller.getSelectedIndexPaths();

              List<String> idList = [];
              for (var element in selectedIndexes) {
                idList.add(list[element].id);
              }

              ///遍历id集合，并且在原来的list中删除这些id所对应的数据
              for (var itemId in idList) {
                list.removeWhere((element) {
                  return element.id == itemId;
                });
              }

              ///更新内部数据，这句话一定要写哦
              controller.deleteCellAt(indexPaths: selectedIndexes);
              setState(() {});
            }),
        trailing: CupertinoButton.filled(
            minSize: 0,
            padding: const EdgeInsets.all(10),
            child: const Text('select all'),
            onPressed: () {
              controller.selectAll(dataLength: list.length);
            }),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _item(context, index);
        },
      ),
    );
  }

  Widget _item(BuildContext ctx, int index) {
    return SwipeActionCell(
      controller: controller,
      index: index,

      // Required!
      key: ValueKey(list[index]),

      /// Animation default value below
      // normalAnimationDuration: 400,
      // deleteAnimationDuration: 400,
      selectedForegroundColor: Colors.black.withAlpha(30),
      trailingActions: [
        SwipeAction(
            title: "delete",
            performsFirstActionWithFullSwipe: true,
            nestedAction: SwipeNestedAction(title: "confirm"),
            onTap: (handler) async {
              await handler(true);

              list.removeAt(index);
              setState(() {});
            }),
        SwipeAction(title: "action2", color: Colors.grey, onTap: (handler) {}),
      ],
      leadingActions: [
        SwipeAction(
            title: "delete",
            onTap: (handler) async {
              await handler(true);
              list.removeAt(index);
              setState(() {});
            }),
        SwipeAction(
            title: "action3", color: Colors.orange, onTap: (handler) {}),
      ],
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (ctx) => const HomePage()));
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("This is index of ${list[index]}",
              style: const TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}

// A Button
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
          backgroundColor: ColorManager.kPrimaryColor,
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

// Remember Me Widget
class RememberMeWidget extends StatefulWidget {
  const RememberMeWidget({Key? key}) : super(key: key);

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  bool rememberMe = false;

  void _onRememberMeChanged(newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
        } else {}
      });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),
      const Text(
        "Remember me",
        style: TextStyle(
            color: Color(0xFFBFBFBF),
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    ]);
  }
}


// CartCardWidget 
class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Hero(
                          tag: "1",
                          child: Image.asset(
                              cart.product.images[0]),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 19),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product.title,
                        style:  TextStyle(color:  ColorManager.KTextColor, fontWeight: FontWeight.w900,fontSize: 16),
                        
                      
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: cart.product.price.toString(),
                        style:  TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.kPrimaryColor,
                        ),
                      ),
                      TextSpan(
                          text: "  x${cart.numOfItem}",
                          style:  TextStyle(
                              color: ColorManager.KTextColor,
                              fontWeight: FontWeight.w700))
                    ])),
                  ],
                ),
              ],
            ),
          );
  }
}
