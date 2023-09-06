import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  String hintText;
  int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: BuildBorder(),
        enabledBorder: BuildBorder(Colors.white),
        focusedBorder: BuildBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}