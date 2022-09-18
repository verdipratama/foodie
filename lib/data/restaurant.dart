import 'dart:convert';

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

class Menus {
  Menus({
    required this.foods,
    required this.drinks,
  });

  List<Drink> foods;
  List<Drink> drinks;

  factory Menus.fromRawJson(String str) => Menus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menus.fromJson(Map<String, dynamic> json) {
    return Menus(
      foods: List<Drink>.from(json["foods"].map((x) => Drink.fromJson(x))),
      drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
      "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
    };
  }
}

class Drink {
  Drink({required this.name});

  final String name;

  factory Drink.fromRawJson(String str) => Drink.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Drink.fromJson(Map<String, dynamic> json) {
    return Drink(name: json["name"]);
  }

  Map<String, dynamic> toJson() => {"name": name};
}
