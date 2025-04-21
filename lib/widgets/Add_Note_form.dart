import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubits.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_Form_textField.dart';
import 'package:intl/intl.dart';

String? title, subTitle;

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String formatedDte = DateFormat('dd-MM-yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          sheetBody(),
          ColorList(),

          BlocBuilder<NotesAddCubits, AddNotesStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is LoadingAddNOtesState ? true : false,
                label: "Add",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formatedDte,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<NotesAddCubits>(
                      context,
                    ).addNotes(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget sheetBody() {
  return Column(
    children: [
      textFormField(
        hintText: 'Title',
        onSaved: (value) {
          title = value;
        },
        maxLines: 1,
      ),
      SizedBox(height: 20),
      textFormField(
        hintText: 'Content',
        onSaved: (value) {
          subTitle = value;
        },
        maxLines: 5,
      ),
      SizedBox(height: 80),
    ],
  );
}
