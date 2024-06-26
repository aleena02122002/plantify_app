import 'package:flutter/material.dart';



class MyTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;


  const MyTextField({Key? key, required this.hintText, required this.controller, required this.prefixIcon, required this.focusNode,required this.validator})
      : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          cursorColor: const Color(0xFF0D986A),
          focusNode: widget.focusNode,
          controller: widget.controller,
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: widget.hintText,
            prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xFF0D986A))
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Color(0xFF0D986A),width: 2.0)
            )
          ),

        ),
      );
  }
}
