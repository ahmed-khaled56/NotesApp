import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'package:notes_app/widgets/not_edit_view_body.dart';

class EditNoteView extends StatefulWidget {
  static String id = "Edit view";
  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      backgroundColor: Color(0xff323232),
      body: NotEditViewBody(note: note),
    );
  }
}
