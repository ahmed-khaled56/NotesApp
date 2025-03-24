import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class textField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  //final String data;
  Function(String)? onChange;
  final TextInputType? textType;

  textField({
    super.key,
    required this.hintText,
    required this.onChange,
    @required this.textType,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      width: double.infinity,
      child: TextField(
        maxLines: maxLines,
        keyboardType: textType,
        onChanged: onChange,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          fillColor: Color(0xff28435A),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 2, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 2,
              color: kPrimaryColor ?? Colors.white,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: kPrimaryColor),
        ),
      ),
    );
  }
}
