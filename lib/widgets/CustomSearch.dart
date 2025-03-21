import 'package:flutter/material.dart';

class Customsearch extends StatelessWidget {
  const Customsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade900,
      ),
      child: Center(child: Icon(Icons.search, size: 30)),
    );
  }
}
