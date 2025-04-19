import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class textFormField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  //final String data;

  void Function(String?)? onSaved;
  final TextInputType? textType;

  textFormField({
    required this.hintText,

    @required this.textType,
    required this.onSaved,

    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      width: double.infinity,
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "feild is required";
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        keyboardType: textType,

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
