import 'package:coffee_shop/presentation/account/account_screen.dart';
import 'package:coffee_shop/presentation/history/history_screen.dart';
import 'package:coffee_shop/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int bottomNavBarIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    HistoryScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: pages[bottomNavBarIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 5,
            )
          ],
          color: const Color(0xffFEFEFE),
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color(0xff5D4037),
          unselectedItemColor: const Color(0xffCACACA),
          currentIndex: bottomNavBarIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
          ),
          enableFeedback: true,
          onTap: (index) {
            if (bottomNavBarIndex != index) {
              setState(() {
                bottomNavBarIndex = index;
              });
            }
          },
          unselectedLabelStyle: const TextStyle(
            fontSize: 10,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.horizontal_split_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.account_box),
            ),
          ],
        ),
      ),
    );
  }
}
