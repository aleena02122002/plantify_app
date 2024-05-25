import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback voidCallback;
  final bool endIcon;
  final Color? textColor;

  ProfileMenu({
    required this.title,
    required this.iconData,
    required this.voidCallback,
    this.endIcon = true,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xFF0D986A).withOpacity(0.1),
          ),
          child: Icon(iconData, color: Color(0xFF0D986A)),
        ),
        title: Text(title,style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
        trailing:endIcon? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300.withOpacity(0.2),
          ),
          child: Icon(Icons.arrow_forward_ios, size: 18.0, color: Colors.grey),):null,
        onTap: voidCallback,
      ),
    );
  }
}


class SettingMenu extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback voidCallback;
  final bool endIcon;
  final Color? textColor;

  SettingMenu({
    required this.title,
    required this.iconData,
    required this.voidCallback,
    this.endIcon = true,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            // color: Color(0xFF0D986A).withOpacity(0.1),
          ),
          child: Icon(iconData, color: Color(0xFF0D986A)),
        ),
        title: Text(title,style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
        trailing:endIcon? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300.withOpacity(0.2),
          ),
          child: Icon(Icons.arrow_forward_ios, size: 18.0, color: Colors.grey),):null,
        onTap: voidCallback,
      ),
    );
  }
}
