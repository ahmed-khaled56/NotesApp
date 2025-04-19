import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(note.color),
      ),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),

            subtitle: Text(
              note.subTitle,
              style: TextStyle(
                color: Colors.black.withAlpha(120),
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                note.delete();
              },
              icon: Icon(Icons.delete, size: 35, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, top: 40, bottom: 10),
            child: Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withAlpha(120),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
