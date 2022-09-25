import 'package:flutter/material.dart';
import 'package:foodie/modules/favorite/foodie_favorite_page.dart';
import 'package:foodie/modules/home/foodie_home_page.dart';
import 'package:foodie/modules/notification/foodie_notif_page.dart';
import 'package:foodie/modules/profile/foodie_profile_page.dart';
import 'package:foodie/widgets/custom_navbar.dart';

class FoodieMainLayouts extends StatefulWidget {
  const FoodieMainLayouts({Key? key}) : super(key: key);

  @override
  State<FoodieMainLayouts> createState() => _FoodieMainLayoutsState();
}

class _FoodieMainLayoutsState extends State<FoodieMainLayouts> {
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
        leading: const Icon(Icons.format_align_left_sharp),
        actions: const [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.map_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
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
