import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  CustomInkWell({required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          child,
        ],
      ),
    );
  }
}


Widget myFunction(BuildContext context) {
  return CustomInkWell(
    onTap: () {
      print('Inkwell tapped');
    },
    child: Image.asset('your_image_path_here'),
  );
}