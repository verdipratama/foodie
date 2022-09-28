import 'package:flutter/material.dart';
import 'package:foodie/utils/styles_helper.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.title,
    this.onTap,
    this.isView = true,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;
  final bool isView;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          isView
              ? Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      Spacers.horizontalSpaceTiny(context),
                      const Icon(Icons.keyboard_arrow_right_sharp),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
