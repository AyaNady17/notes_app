import 'package:flutter/material.dart';

import '../Widgets/custom_note_bottom_sheet.dart';
import '../Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const CustomNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
