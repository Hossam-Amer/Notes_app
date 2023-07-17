import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.onSaved,
  });
  final String? text;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is requiered";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
      maxLines: maxLines,
    );
  }
}
