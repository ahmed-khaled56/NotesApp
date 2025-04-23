import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubits.dart';
import 'package:notes_app/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:notes_app/helper/Show%20_snack_bar.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/CustomAppBar.dart';
import 'package:notes_app/widgets/color_list.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_view_colorList.dart';

class NotEditViewBody extends StatefulWidget {
  const NotEditViewBody({super.key, required this.note, this.onpressed});
  final NoteModel note;
  final void Function()? onpressed;

  @override
  State<NotEditViewBody> createState() => _NotEditViewBodyState();
}

class _NotEditViewBodyState extends State<NotEditViewBody> {
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Customappbar(
                  title: 'Edit Note',
                  icon: Icons.check,
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = subTitle ?? widget.note.subTitle;

                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                    if (widget.note.title == title ||
                        widget.note.subTitle == subTitle) {
                      showSnackBar(context, "Note edited successfully");
                    } else {
                      showSnackBar(context, "note not edited");
                    }
                  },
                ),
                const SizedBox(height: 40),
                textField(
                  hintText: widget.note.title,
                  onchange: (value) {
                    title = value;
                  },
                  maxLines: 1,
                ),
                const SizedBox(height: 20),
                textField(
                  hintText: widget.note.subTitle,
                  onchange: (value) {
                    subTitle = value;
                  },
                  maxLines: 5,
                ),
                const SizedBox(height: 20),
                EditColorList(note: widget.note),

                // ColorList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
