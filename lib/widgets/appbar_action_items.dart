import 'package:flutter/material.dart';

final List icon = [
  Icons.search,
  Icons.map_outlined,
  Icons.shopping_bag_outlined,
];

List<Widget> actionItems() {
  return List.generate(icon.length, (index) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Icon(icon[index]),
    );
  });
}
