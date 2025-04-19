import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 30)),
        Spacer(),

        IconButton(onPressed: onPressed, icon: CustomIcon(icon: icon)),
      ],
    );
  }
}
