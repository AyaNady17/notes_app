import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_appbar.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit Notes",
              icon: Icon(Icons.done),
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hintText: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
