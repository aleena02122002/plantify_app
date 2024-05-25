import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlantCard extends StatelessWidget {
  final String text;
  final Color color;
  final String num;
  final Image mainImage;
  final Image overlayImage;

  const PlantCard({
    Key? key,
    required this.text,
    required this.color,
    required this.num,
    required this.mainImage,
    required this.overlayImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          mainImage,
          Positioned(
            top: 1,
            right: 1,
            left: 1,
            child: overlayImage,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                right: 1,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontFamily: 'Philosopher',
                    color: color,
                  ),
                ),
              ),
              Positioned(
                right: 1,
                child: Text(
                  num,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
