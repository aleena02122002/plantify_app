import 'package:flutter/material.dart';
import 'package:plants/screens/favorite.dart';
import 'package:plants/screens/home.dart';
import 'package:plants/screens/homePage.dart';
import 'package:plants/screens/order.dart';
import 'package:plants/screens/profile.dart';
import 'package:plants/screens/signup.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  final screens= [
    HomeView(),
    FavoriteView(),
    OrderRecieved(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
        ),
        child: NavigationBar(
          height: 60,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.house_outlined),
                label: 'home',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border),
                label: 'favorite',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.perm_identity_outlined),
                label: 'profile',
              ),
            ]),
      ),
    );
  }
}
