import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_button.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';
import 'package:notes_app/constants.dart';

class CustomNoteBottomSheet extends StatelessWidget {
  const CustomNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
