import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            textField(hintText: 'Title', onChange: (value) {}, size: 20),
            SizedBox(height: 20),
            textField(hintText: 'Content', onChange: (value) {}, size: 60),
            SizedBox(height: 120),
            CustomButton(label: "Add", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
