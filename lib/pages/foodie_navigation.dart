import 'package:flutter/material.dart';
import 'package:foodie/pages/foodie_favorite_page.dart';
import 'package:foodie/pages/foodie_home_page.dart';
import 'package:foodie/pages/foodie_notif_page.dart';
import 'package:foodie/pages/foodie_profile_page.dart';
import 'package:foodie/widgets/custom_navbar.dart';

class FoodieNavigation extends StatefulWidget {
  const FoodieNavigation({Key? key}) : super(key: key);

  @override
  State<FoodieNavigation> createState() => _FoodieNavigationState();
}

class _FoodieNavigationState extends State<FoodieNavigation> {
  final List<Widget> _screens = const [
    FoodieHomePage(),
    FoodieFavoritePage(),
    FoodieNotificationPage(),
    FoodieProfilePage(),
  ];

  final List _items = [
    {
      "icon": const Icon(Icons.home),
      "label": "Home",
    },
    {
      "icon": const Icon(Icons.favorite),
      "label": "Favorite",
    },
    {
      "icon": const Icon(Icons.notifications_sharp),
      "label": "Notifikasi",
    },
    {
      "icon": const Icon(Icons.account_circle_rounded),
      "label": "Saya",
    }
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Image.asset(
          'assets/img/logo_web.png',
          width: 100.0,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomNavbar(
        selectedIndex: _selectedIndex,
        func: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: _items,
      ),
    );
  }
}
