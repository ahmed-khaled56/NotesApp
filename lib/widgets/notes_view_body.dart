import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';
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

          Customappbar(title: 'Notes', icon: Icons.search),
          SizedBox(height: 20),

          Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
