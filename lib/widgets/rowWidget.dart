import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: (){}, child: Text('Top Picks')),
          TextButton(onPressed: (){}, child: Text('Best Deals')),
          TextButton(onPressed: (){}, child: Text('Indoor')),
          TextButton(onPressed: (){}, child: Text('Outdoor')),
          TextButton(onPressed: (){}, child: Text('Seeds')),
          TextButton(onPressed: (){}, child: Text('Plants')),
        ],
      ),
    );
  }
}
