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

  //  List<Widget> screen = [];

  //  List items = [
  //   {
  //     "icon": const Icon(Icons.home),
  //     "label": "Home",
  //   },
  //   {
  //     "icon": const Icon(Icons.compass_calibration_outlined),
  //     "label": "Explore",
  //   },
  //   {
  //     "icon": const Icon(Icons.person),
  //     "label": "Profile",
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: func,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: List.generate(items.length, (index) {
        return BottomNavigationBarItem(
          icon: items[index]['icon'],
          label: items[index]['label'],
        );
      }),
    );
  }
}
