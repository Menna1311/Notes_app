import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    // if (state is AddNoteLoading) {
    //   log('AddNoteLoading state emitted');
    // }

    try {
      var notesBox = Hive.box<NoteModel>('notes');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(error: e.toString()));
    }
  }
}
