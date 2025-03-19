import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatefulWidget {
  final String label;
  VoidCallback? onPressed;

  CustomButton({super.key, required this.label, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(widget.label, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
