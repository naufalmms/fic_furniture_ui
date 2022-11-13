// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  final String imgUrl;
  final String titleProd;
  final String descriptProd;
  final int price;
  final double rating;
  final Color color;
  final bool favorite;
  Product({
    required this.imgUrl,
    required this.titleProd,
    required this.descriptProd,
    required this.price,
    required this.rating,
    required this.color,
    required this.favorite,
  });
}

List<Product> products = [
  Product(
    imgUrl: "assets/image/img_product_a.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.4,
    favorite: true,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_b.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.9,
    favorite: false,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_c.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.5,
    favorite: true,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_d.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.8,
    favorite: false,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_c.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.5,
    favorite: true,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_d.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.8,
    favorite: true,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_c.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.5,
    favorite: true,
    color: Color(0xFF9A93),
  ),
  Product(
    imgUrl: "assets/image/img_product_d.png",
    titleProd: "Stylish Chair",
    descriptProd: "Curabitur commodo turpis id placerat mattis",
    price: 120000,
    rating: 4.8,
    favorite: true,
    color: Color(0xFF9A93),
  ),
];
