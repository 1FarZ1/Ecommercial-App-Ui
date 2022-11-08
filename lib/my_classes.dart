import "package:flutter/material.dart";
import 'package:pinput/pinput.dart';




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




// cart Cartcard widget
