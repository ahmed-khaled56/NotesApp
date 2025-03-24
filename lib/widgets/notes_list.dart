import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/noteItem.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, EditNoteView.id);
              },

              child: Noteitem(),
            ),
          );
        },
      ),
    );
  }
}
