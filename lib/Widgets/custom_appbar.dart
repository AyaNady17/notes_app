import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Notes",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
