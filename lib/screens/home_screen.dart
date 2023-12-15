import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pancake_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // my tabs
  List<Widget> myTabs = [
    // donut tab
    myTab(
      iconPath: 'assets/icons/donut.png',
    ),

    // burger tab
    myTab(
      iconPath: 'assets/icons/burger.png',
    ),

    // smoothie tab
    myTab(
      iconPath: 'assets/icons/avocado.png',
    ),

    // pancake tab
    myTab(
      iconPath: 'assets/icons/pancake.png',
    ),

    // pizza tab
    myTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              onPressed: () {
                // open drawer
              },
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                onPressed: () {
                  // profile
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // I want to eat
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 18,
              ),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  donutTab(),

                  // burger page
                  burgerTab(),

                  // smoothie page
                  smoothieTab(),

                  // pancake page
                  pancakeTab(),

                  // pizza page
                  pizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
