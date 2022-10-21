import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodie/utils/styles_helper.dart';
import 'package:foodie/widgets/page_title.dart';

class FoodieHomePage extends StatelessWidget {
  const FoodieHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/img/trending8.png',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.maxFinite,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                viewportFraction: 0.8,
                autoPlay: true,
                aspectRatio: 2.2,
              ),
            ),
            Spacers.verticalSpaceMedium(context),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const PageTitle(
                    title: 'Categories',
                  ),
                  Spacers.verticalSpaceSmall(context),
                  SizedBox(
                    height: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(10, (_) {
                        return _buildCategoryItem(context);
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Column(
                children: [
                  const PageTitle(
                    title: 'Popular Restaurant Nearby',
                    isView: false,
                  ),
                  Spacers.verticalSpaceMedium(context),
                  Container(
                    color: const Color(0xFFFF683A),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            'assets/img/popular1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Spacers.horizontalSpaceLarge(context),
                        Column(
                          children: const [
                            Text('title'),
                            Text('asd'),
                            Text('price'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: const PageTitle(
                title: 'New Arrivals',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildCategoryItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 6.0,
                color: const Color(0xFFFF683A),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/img/popular2.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Spacers.verticalSpaceTiny(context),
          const SizedBox(
            width: 60.0,
            child: Text(
              'Category',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
