import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<dynamic>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box('NotesBox');

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
