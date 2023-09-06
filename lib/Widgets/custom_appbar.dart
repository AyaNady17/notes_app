import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title = "Notes", required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        Container(
          height: 43,
          width: 43,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16)),
          child: icon,
        ),
      ],
    );
  }
}
