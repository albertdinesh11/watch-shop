import 'package:flutter/material.dart';
import 'package:watch_shop/utils/category_cards.dart';
import 'package:watch_shop/utils/popular_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    "Trending",
    "Popular",
    "New",
    "Best Selling",
  ];

  List<Widget> pages = [
    const CategoryCard(),
    const PopularCard(),
    const CategoryCard(),
    const CategoryCard(),
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          iconSize: 28,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('lib/images/cart_icon.png'),
                  size: 40,
                ),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: ""),
          ]),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Center(
                    child: Image.asset('lib/images/menu_icon.png'),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'NOMOS',
                      style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 4,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'GLASHOTTE',
                      style: TextStyle(
                          fontSize: 08,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Image.asset('lib/images/cart_icon.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            const Text(
              'EXPLORE',
              style: TextStyle(
                  fontSize: 28, letterSpacing: -1, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              'TOP BRANDS WATCHES',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: height * 0.03),
            SizedBox(
              height: height * 0.07,
              width: double.maxFinite,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.all(5),
                        width: width * 0.30,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            color: current == index
                                ? Colors.black
                                : Colors.transparent,
                            borderRadius: current == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(0)),
                        child: Center(
                          child: Text(
                            items[index],
                            style: TextStyle(
                                color: current == index
                                    ? Colors.white
                                    : Colors.grey[700]),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: height * 0.03),
            SizedBox(
              height: height * 0.45,
              width: double.maxFinite,
              child: pages[current],
            ),
            const SizedBox(height: 20),
            const Text(
              'TOP SELLING',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
          ])),
    );
  }
}
