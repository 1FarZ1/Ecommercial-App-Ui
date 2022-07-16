import "package:flutter/material.dart";
import 'package:pinput/pinput.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const ColorTxt = 0xFFBFBFBF;


//crating a  product Object 
class Product{
   final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}





// Creating a Cart Object 
class Cart{

  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});

}



// rememeber me widget
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool rememberMe = false;

  void _onRememberMeChanged(newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          print('he is');
        } else {
          print('he is not');
        }
      });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),
      Text(
        "Remember me",
        style: TextStyle(
            color: Color(0xFFBFBFBF),
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    ]);
  }
}

// cart Cartcard widget
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
                        padding: EdgeInsets.all(15),
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
                        style: TextStyle(color: Color(ColorTxt), fontWeight: FontWeight.w900,fontSize: 16),
                        
                      
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: cart.product.price.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                      TextSpan(
                          text: "  x${cart.numOfItem}",
                          style: TextStyle(
                              color: Color(ColorTxt),
                              fontWeight: FontWeight.w700))
                    ])),
                  ],
                ),
              ],
            ),
          );
  }
}
