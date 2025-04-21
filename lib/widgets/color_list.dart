import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(radius: 20, backgroundColor: Colors.blue);
  }
}

class ColorList extends StatelessWidget {
  ColorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const colorItem();
        },
      ),
    );
  }
}
