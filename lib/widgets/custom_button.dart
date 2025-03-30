import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  void Function() onPressed;

  CustomButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(label, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
