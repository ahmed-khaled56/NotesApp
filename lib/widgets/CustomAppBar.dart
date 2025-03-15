import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomSearch.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 30)),
        Spacer(),
        Customsearch(),
      ],
    );
  }
}
