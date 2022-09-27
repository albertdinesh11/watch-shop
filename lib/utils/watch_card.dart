// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class WatchCard extends StatelessWidget {
  final String watchName;
  final double watchPrice;
  final watchImg;
  const WatchCard(
      {Key? key,
      required this.watchName,
      required this.watchPrice,
      required this.watchImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: width * 0.50,
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: height * 0.35,
                width: width * 0.45,
                child: Center(
                  child: Image.asset(watchImg),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              watchName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 5),
            Text(
              'USD \$$watchPrice',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}
