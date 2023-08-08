import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';


Future<List<Product>> fetchData(http.Client client) async {
  var url = Uri.parse("http://192.168.1.42:5000/get_data_mobile");
  final response = await client
      .get(url);
  return compute(parseData, response.body);
}

List<Product> parseData(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

class Product {
  final int id;
  final double price;
  final String title;
  final String images;
  final String description;
  final double rating;
  final String colors;
  final bool isFavourite, isPopular;
  final String thumbnailUrl;
  

  const Product({
    required this.id,
    this.rating = 0.0,,
    required this.price,
    required this.title,
    required this.images,
    required this.description,
    //เพิ่ม
    //pull
    required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    required this.thumbnailUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      rating: json['rating'] as double,
      price: json['price'] as double,
      title: json['title'] as String,
      images: json['images'] as String,
      description: json['description'] as String,
      colors:  json['color'] as String ,
      isFavourite: json['isFavourite'] as bool,
      isPopular: json['isPopular'] as bool,
      thumbnailUrl: json['thumbnailUrl'] as String,
      
    );
  }
}
