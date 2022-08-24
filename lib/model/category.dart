import 'package:flutter/material.dart';
import 'package:foodies/gen/assets.gen.dart';

class Category {
  String name;
  Color color;
  String icon;

  Category({required this.name, required this.color, required this.icon});
}

var categoriesData = [
  Category(
      name: 'Vegetable',
      color: const Color.fromRGBO(235, 248, 230, 1),
      icon: Assets.images.cabbage.path),
  Category(
      name: 'Meat',
      color: Color.fromRGBO(255, 232, 237, 1),
      icon: Assets.images.meat.path),
  Category(
      name: 'Chicken',
      color: Color.fromRGBO(229, 237, 250, 1),
      icon: Assets.images.chickenLeg.path),
  Category(
      name: 'Snack',
      color: Color.fromRGBO(255, 239, 182, 1),
      icon: Assets.images.nachos.path),
  Category(
      name: 'Drink',
      color: Color.fromRGBO(244, 246, 251, 1),
      icon: Assets.images.drink.path)
];
