import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/rice.png",
    ],
    colors: [
      //Color(0xFFF6625E),
      //Color(0xFF836DB8),
      //Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "White Rice",
    price: 150,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/chips.png",
    ],
    colors: [
      // Color(0xFFF6625E),
      //Color(0xFF836DB8),
      //Color(0xFFDECB9C),
      //Colors.white,
    ],
    title: "Plantain chips",
    price: 50,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/cheese.png",
    ],
    colors: [
      //Color(0xFFF6625E),
      //Color(0xFF836DB8),
      //Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cheese",
    price: 70,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/cheese.png",
    ],
    colors: [
      //Color(0xFFF6625E),
      //Color(0xFF836DB8),
      //Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cheese",
    price: 70,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "This product is distributed from Jamaica to all over the world …";
