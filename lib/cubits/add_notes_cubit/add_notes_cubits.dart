import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_states.dart';

class NotesAddCubits extends Cubit<AddNotesStates> {
  NotesAddCubits() : super(initialAddNOtesState());

  addNotes(NoteModel note) async {
    emit(LoadingAddNOtesState());
    try {
      var notes_box = await Hive.box<NoteModel>(kNotesBox);

      notes_box.add(note);
      emit(SuccessfulAddNOtesState());
    } catch (e) {
      emit(FailureAddNOtesState(e.toString()));
    }
  }
}
