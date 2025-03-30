import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';

import 'package:notes_app/widgets/custom_textField.dart';

class EditNoteView extends StatefulWidget {
  static String id = "Edit view";
  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff323232),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Customappbar(title: 'Edit Note', icon: Icons.check),
                  const SizedBox(height: 40),
                  textField(
                    hintText: 'Title',
                    onSaved: (value) {},
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  textField(
                    hintText: 'Content',
                    onSaved: (value) {},
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
