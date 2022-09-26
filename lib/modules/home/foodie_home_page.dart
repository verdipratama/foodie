import 'package:flutter/material.dart';
import 'package:foodie/widgets/page_title.dart';

class FoodieHomePage extends StatelessWidget {
  const FoodieHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  color: Colors.red,
                  child: const Text(
                    'BANNER SECTION',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: const PageTitle(
              title: 'Categories',
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: const [
                PageTitle(
                  title: 'Popular Restaurant Nearby',
                  isView: false,
                ),
                SizedBox(height: 15.0),
                Text(
                  'The heated or vaporized fluid exits the boiler for use in various processes or heating applications, including water heating, central heating, boiler-based power generation, cooking, and sanitation.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: const PageTitle(
              title: 'New Arrivals',
            ),
          ),
        ],
      ),
    );
  }
}
