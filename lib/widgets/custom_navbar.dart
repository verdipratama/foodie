import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    Key? key,
    required this.selectedIndex,
    required this.func,
    required this.items,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int) func;
  final List items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: func,
      iconSize: 26,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: List.generate(items.length, (index) {
        return BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: items[index]['icon'],
          ),
          label: items[index]['label'],
        );
      }),
    );
  }
}
