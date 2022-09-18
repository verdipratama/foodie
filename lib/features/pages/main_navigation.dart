import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  void _onSelectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Tab yang aktif: $_selectedIndex',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // body: IndexedStack(
      //   index: _selectedIndex,
      //   children: const [
      //     Hello(),
      //     Hello(),
      //     Hello(),
      //   ],
      // ),
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
            child: Icon(Icons.location_on_outlined),
          ),
          label: "Explore",
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
