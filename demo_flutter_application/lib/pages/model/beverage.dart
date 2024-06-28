import 'package:flutter/material.dart';

class Beverage{
  String imageURL;
  String name;
  int price;
  double rating;
  Color? color;

Beverage(
    {required this.imageURL, 
    required this.name, 
    required this.price, 
    required this.rating,
    required this.color});

}