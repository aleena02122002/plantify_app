import 'package:flutter/material.dart';
import 'package:plants/screens/logout.dart';
import 'package:plants/screens/profile.dart';
import 'package:plants/screens/profile.dart';
import 'package:plants/screens/setting.dart';

class Popup extends StatelessWidget {
   Popup({super.key});

  final menu1 = Setting();
  final menu2 = MyProfile();
  final menu3 = LogoutView();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
              child: Text('Setting'),
            
          )
        ]
    );
  }
}
