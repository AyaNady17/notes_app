import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Widgets/add_note_form.dart';
import 'package:notes_app/Widgets/custom_button.dart';
import 'package:notes_app/Widgets/custom_textfield.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/AddNote%20Cubit/addnote_cubit.dart';
import 'package:notes_app/cubits/AddNote%20Cubit/notes_cubit/notes_cubit.dart';

class CustomNoteBottomSheet extends StatefulWidget {
  const CustomNoteBottomSheet({super.key});

  @override
  State<CustomNoteBottomSheet> createState() => _CustomNoteBottomSheetState();
}

class _CustomNoteBottomSheetState extends State<CustomNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddnoteCubit, AddnoteState>(
          listener: (context, state) {
            if (state is AddnoteFailure) {
              print("failure is ${state.error}");
            }
            if (state is AddnoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddnoteLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
