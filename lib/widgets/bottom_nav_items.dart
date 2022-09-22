import 'package:flutter/material.dart';

BottomNavigationBarItem bottomItem(IconData icon, String text) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      child: Icon(icon),
    ),
    label: text,
  );
}
