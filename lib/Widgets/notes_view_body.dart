import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}