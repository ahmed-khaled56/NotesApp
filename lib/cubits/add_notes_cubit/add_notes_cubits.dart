import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_notes_states.dart';

class NotesCubits extends Cubit<AddNotesStates> {
  NotesCubits() : super(initialAddNOtesState());
}
