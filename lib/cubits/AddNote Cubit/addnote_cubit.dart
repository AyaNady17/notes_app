import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addNote(NoteModel note) async {
    emit(AddnoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>('NotesBox');
      await noteBox.add(note);
      emit(AddnoteSuccess());
    } on Exception catch (e) {
      emit(AddnoteFailure(error: e.toString()));
    }
  }
}
