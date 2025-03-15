import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Flutter Tipes',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),

            subtitle: Text(
              '  focus with me ',
              style: TextStyle(
                color: Colors.black.withAlpha(120),
                fontSize: 20,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 35, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, top: 70, bottom: 10),
            child: Text(
              'may 23,2020',
              style: TextStyle(
                color: Colors.black.withAlpha(120),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
