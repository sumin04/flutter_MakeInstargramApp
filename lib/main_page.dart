import 'package:flutter/material.dart';

import 'mainpages/homeScreen.dart';
import 'mainpages/shoppingScreen.dart';
import 'mainpages/searchScreen.dart';
import 'mainpages/myScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 3;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: 'HomeScreen',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: 'SearchGridScreen',
      icon: Icon(Icons.search),
    ),
    // BottomNavigationBarItem(
    //   label: 'Mode',
    //   icon: Icon(Icons.dark_mode_outlined),
    // ),
    BottomNavigationBarItem(
      label: 'ShoppingScreen',
      icon: Icon(Icons.shopping_bag_outlined),
    ),
    BottomNavigationBarItem(
      label: 'MyScreen',
      icon: Icon(Icons.account_circle_outlined),
    ),
  ];

  List pages =[
    HomeScreen(),
    SearchGridScreen(),
    ShoppingScreen(),
    MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            )
          ],
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: bottomItems,
        ),
      )
    );
  }
}
