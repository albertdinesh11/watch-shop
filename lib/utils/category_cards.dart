import 'package:flutter/material.dart';
import 'package:watch_shop/utils/watch_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.maxFinite,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          WatchCard(
              watchName: 'TANGMAT',
              watchPrice: 199.25,
              watchImg: 'lib/images/img_4.png'),
          WatchCard(
              watchName: 'Matcher',
              watchPrice: 19.25,
              watchImg: 'lib/images/img_2.png'),
          WatchCard(
              watchName: 'Sketches',
              watchPrice: 26.10,
              watchImg: 'lib/images/img_4.png'),
        ],
      ),
    );
  }
}
