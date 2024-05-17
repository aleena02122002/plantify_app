import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
   Search({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: CupertinoSearchTextField(
          placeholder: 'Search',
          controller: _textController,

        ),
      ),
    );
  }
}
