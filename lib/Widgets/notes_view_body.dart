import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Widgets/note_item.dart';
import 'package:notes_app/Widgets/notes_list_view.dart';
import 'package:notes_app/cubits/AddNote%20Cubit/notes_cubit/notes_cubit.dart';

import 'custom_appbar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icon(Icons.search),
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
