import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_states.dart';

class NotesAddCubits extends Cubit<AddNotesStates> {
  NotesAddCubits() : super(initialAddNOtesState());
  Color color = const Color(0xffF25C54); //default
  addNotes(NoteModel note) async {
    note.color = color.value;
    try {
      emit(LoadingAddNOtesState());
      var NotesBox = Hive.box<NoteModel>(kNotesBox);

      await NotesBox.add(note);
      emit(SuccessfulAddNOtesState());
    } catch (e) {
      emit(FailureAddNOtesState(e.toString()));
    }
  }
}
