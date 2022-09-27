import 'package:flutter/material.dart';
import 'package:foodie/widgets/page_title.dart';

class FoodieHomePage extends StatelessWidget {
  const FoodieHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              child: Column(
                children: [
                  const PageTitle(
                    title: 'Categories',
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 110.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(10, (_) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 6.0,
                                    color: Colors.orange,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/img/popular2.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Category',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                children: [
                  const PageTitle(
                    title: 'Popular Restaurant Nearby',
                    isView: false,
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    color: Colors.red,
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
                        const SizedBox(width: 10.0),
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
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const PageTitle(
                title: 'New Arrivals',
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 60.0,
            //         color: Colors.red,
            //         child: const Center(
            //           child: Text(
            //             'BANNER SECTION',
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
