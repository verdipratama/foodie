import 'dart:convert';

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
