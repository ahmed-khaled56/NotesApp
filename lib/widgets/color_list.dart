import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubits.dart';

class colorItem extends StatelessWidget {
  colorItem({super.key, required this.isSelected, required this.color});
  bool isSelected;
  Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: CircleAvatar(radius: 20, backgroundColor: color),
        )
        : CircleAvatar(radius: 22, backgroundColor: color);
  }
}

class ColorList extends StatefulWidget {
  ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

int Currentindex = 0;

class _ColorListState extends State<ColorList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                Currentindex = index;
                BlocProvider.of<NotesAddCubits>(context).color =
                    kColorsList[index];
                setState(() {});
              },
              child: colorItem(
                isSelected: Currentindex == index,

                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
