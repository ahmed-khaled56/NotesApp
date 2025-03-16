import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';
import 'package:notes_app/widgets/noteItem.dart';
import 'package:notes_app/widgets/notes_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: 50),
          Customappbar(),
          SizedBox(height: 25),

          Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
