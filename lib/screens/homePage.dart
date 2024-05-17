import 'package:flutter/material.dart';
import 'package:plants/screens/home.dart';
import 'package:plants/widgets/bottomNavigation.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavigationBar(),
      body: HomeView(),
    );
  }
}
