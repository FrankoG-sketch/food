//import 'dart:async';

import 'package:flutter/material.dart';

class Food {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Food({
    this.id,
    this.images,
    this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.title,
    this.price,
    this.description,
  });
}

// Our demo Products

List<Food> popProducts = [
  Food(
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
  Food(
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
  Food(
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
  Food(
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
