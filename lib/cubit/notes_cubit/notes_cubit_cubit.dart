import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;

  void fetchNotes() {
    var notesBox = Hive.box<NoteModel>('notes');
    notes = notesBox.values.toList();
    emit(NotesCubitNotesuccess());
  }
}
