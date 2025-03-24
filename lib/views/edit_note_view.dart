import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNoteView extends StatelessWidget {
  static String id = "Edit view";
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              // Customappbar(
              //   barTitle: 'Edite Note',
              //   icon: CustomeSubmittedEditeIcon().SubmittedEditeIcon(),
              // ),
              SizedBox(height: 20),
              textField(hintText: 'Title', onChange: (value) {}, maxLines: 1),
              SizedBox(height: 20),
              textField(hintText: 'Content', onChange: (value) {}, maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
