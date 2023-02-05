import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Product>? products;
  const Category({
    required this.name,
    this.products,
  });
}

class Product {
  final String name;
  final String image;
  final String price;
  final bool isSelected;
  final Color color;
  final Color nutrientsColor;
  final List<List<String>> nutrients;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.nutrientsColor,
    required this.color,
    required this.isSelected,
    required this.nutrients,
  });
}

final data = [
  Category(
    name: "Fruits",
    products: [
      Product(
        name: "Apple Fruit",
        price: "5.60",
        nutrientsColor: Colors.red,
        image: "assets/fruits/apple.png",
        isSelected: true,
        color: Colors.red.shade50,
        nutrients: [
          ['Energy', '3'],
          ['Freshness', '2'],
          ['Vitamin', '4'],
          ['Calories', '1'],
        ],
      ),
      Product(
        name: "Lemon Fruit",
        price: "3.10",
        image: "assets/fruits/lemon.png",
        isSelected: false,
        nutrientsColor: Colors.green,
        color: Colors.yellow.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '3'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
      Product(
        name: "Avocado Fruit",
        price: "8.99",
        image: "assets/fruits/avocado.png",
        isSelected: false,
        nutrientsColor: Colors.orange,
        color: Colors.lightGreen.shade50,
        nutrients: [
          ['Energy', '4'],
          ['Freshness', '2'],
          ['Vitamin', '2'],
          ['Calories', '4'],
        ],
      ),
      Product(
        name: "Grape Fruit",
        price: "6.20",
        image: "assets/fruits/grapes.png",
        isSelected: true,
        nutrientsColor: Colors.yellow,
        color: Colors.purple.shade50,
        nutrients: [
          ['Energy', '2'],
          ['Freshness', '1'],
          ['Vitamin', '2'],
          ['Calories', '3'],
        ],
      ),
    ],
  ),
  const Category(name: "Vegetables"),
  const Category(name: "Diary"),
  const Category(name: "Grains"),
  const Category(name: "Meats"),
];
