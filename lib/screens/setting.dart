import 'package:flutter/material.dart';
import 'package:plants/widgets/profilePageListTile.dart';
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        child: Column(
          children: [
            SettingMenu(title: 'Account', iconData: Icons.person, voidCallback: (){}),
            Divider(height: 10,thickness: 1),
            SettingMenu(title: 'Notification', iconData: Icons.volume_up, voidCallback: (){}),
            Divider(height: 10,thickness: 1),
            SettingMenu(title: 'Theme', iconData:Icons.sunny , voidCallback: (){}),
            Divider(height: 10,thickness: 1),
            SettingMenu(title: 'Permissions', iconData: Icons.key, voidCallback: (){}),
            Divider(height: 10,thickness: 1),
            SettingMenu(title: 'Location', iconData: Icons.map, voidCallback: (){}),
            Divider(height: 10,thickness: 1),
            SettingMenu(title: 'Security', iconData: Icons.shield_rounded, voidCallback: (){}),
          ],
        ),
      ),
    );
  }
}
