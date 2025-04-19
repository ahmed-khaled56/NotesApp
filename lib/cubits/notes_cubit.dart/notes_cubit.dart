import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'notes_states.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(initialNOtesState());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var NotesBox = Hive.box<NoteModel>(kNotesBox);
    notes = NotesBox.values.toList();
    emit(SuccessState());
  }
}
