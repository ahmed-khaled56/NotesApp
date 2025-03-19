import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            textField(hintText: 'Title', onChange: (value) {}, maxLines: 1),
            SizedBox(height: 20),
            textField(hintText: 'Content', onChange: (value) {}, maxLines: 5),
            SizedBox(height: 120),
            CustomButton(label: "Add", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
