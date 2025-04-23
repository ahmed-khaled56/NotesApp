import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list.dart';

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  int currentIndex = 0;
  initState() {
    currentIndex = kColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                currentIndex = index;
                widget.note.color = kColorsList[index].value;
                setState(() {});
              },
              child: colorItem(
                isSelected: currentIndex == index,

                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
