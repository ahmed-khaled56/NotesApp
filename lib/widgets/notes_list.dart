import 'package:flutter/material.dart';
import 'package:notes_app/widgets/noteItem.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Noteitem(),
        );
      },
    );
  }
}
