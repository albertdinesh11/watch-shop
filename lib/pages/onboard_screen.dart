import 'package:flutter/material.dart';
import 'package:watch_shop/pages/home_page.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.08),
            const Text(
              'NOMOS',
              style: TextStyle(
                  fontSize: 28, letterSpacing: 4, fontWeight: FontWeight.w500),
            ),
            const Text(
              'GLASHOTTE',
              style: TextStyle(
                  fontSize: 12, letterSpacing: 3, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height * 0.07),
            Center(
              child: SizedBox(
                height: height * 0.45,
                width: width * 0.75,
                child: Center(
                  child: Image.asset('lib/images/img_4.png'),
                ),
              ),
            ),
            SizedBox(height: height * 0.07),
            const Text(
              'TOP BRAND WATCH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Text(
              'FOR THE REAL GENTILMAN',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: height * 0.07),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 17, 17, 17)),
                child: const Center(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
