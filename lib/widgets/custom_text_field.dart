import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
  });
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromRGBO(98, 253, 214, 1),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(98, 253, 214, 1),
          ),
        ),
        hintText: text,
      ),
    maxLines: maxLines,);
  }
}
