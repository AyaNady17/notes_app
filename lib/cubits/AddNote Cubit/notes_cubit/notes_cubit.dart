import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() {
    try {
      var noteBox = Hive.box('NotesBox');
      List<dynamic> Notes = noteBox.values.toList();
      emit(NotesSuccess(notes: Notes));
    } catch (e) {
      emit(NotesFailure(errmsg: e.toString()));
    }
  }
}
