import 'dart:convert';
import 'package:foodie/models/foodie_menu.dart';

class Welcome {
  Welcome({required this.restaurants});

  List<Restaurant> restaurants;

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) {
    return Welcome(
      restaurants: List<Restaurant>.from(json["restaurants"].map(
        (x) => Restaurant.fromJson(x),
      )),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "restaurants": List<dynamic>.from(restaurants.map(
        (x) => x.toJson(),
      )),
    };
  }
}

class Restaurant {
  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menus,
  });

  final String id;
  final String name;
  final String description;
  final String pictureId;
  final String city;
  final double rating;
  final Menus menus;

  factory Restaurant.fromRawJson(String str) =>
      Restaurant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"].toDouble(),
        menus: Menus.fromJson(json["menus"]),
      );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "pictureId": pictureId,
      "city": city,
      "rating": rating,
      "menus": menus.toJson(),
    };
  }
}
