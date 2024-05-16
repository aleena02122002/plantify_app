import 'package:flutter/material.dart';
import 'package:plants/widgets/textField.dart';

class OrderRecieved extends StatelessWidget {
   OrderRecieved({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyTextField(hintText: "Email", controller: emailController, prefixIcon: Icons.email_rounded, focusNode: _focusNode1),
          MyTextField(hintText: 'Password', controller: passwordController, prefixIcon: Icons.lock, focusNode: _focusNode2)
        ],
      ),
    );
  }
}
