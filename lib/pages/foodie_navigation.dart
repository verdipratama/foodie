import 'package:flutter/material.dart';
import 'package:foodie/pages/foodie_favorite_page.dart';
import 'package:foodie/pages/foodie_home_page.dart';
import 'package:foodie/pages/foodie_notif_page.dart';
import 'package:foodie/pages/foodie_profile_page.dart';

class FoodieNavigation extends StatefulWidget {
  const FoodieNavigation({Key? key}) : super(key: key);

  @override
  State<FoodieNavigation> createState() => _FoodieNavigationState();
}

class _FoodieNavigationState extends State<FoodieNavigation> {
  int _selectedIndex = 0;

  void _onSelectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        children: const [
          FoodieHomePage(),
          FoodieFavoritePage(),
          FoodieNotificationPage(),
          FoodieProfilePage(),
        ],
      ),
      bottomNavigationBar: _getNavbar(),
    );
  }

  BottomNavigationBar _getNavbar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onSelectedTab,
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
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Icon(Icons.home),
          ),
          label: "Beranda",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Icon(Icons.favorite),
          ),
          label: "Favorited",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Icon(Icons.notifications_sharp),
          ),
          label: "Notifikasi",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Icon(Icons.account_circle_rounded),
          ),
          label: "Saya",
        ),
      ],
    );
  }
}
