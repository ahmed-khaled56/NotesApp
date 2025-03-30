import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  void Function() onPressed;

  CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

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
          child:
              isLoading == true
                  ? SizedBox(
                    height: 25,
                    width: 25,
                    child: const CircularProgressIndicator(color: Colors.white),
                  )
                  : Text(label, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
