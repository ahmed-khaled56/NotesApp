import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubits.dart';
import 'package:notes_app/widgets/Add_Note_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesAddCubits(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocConsumer<NotesAddCubits, AddNotesStates>(
            listener: (context, state) {
              if (state is SuccessfulAddNOtesState) {
                Navigator.pop(context);
              }
              if (state is FailureAddNOtesState) {
                print('failed ${state.errorMessage}');
              }
            },

            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is LoadingAddNOtesState ? true : false,
                child: SingleChildScrollView(child: AddNoteForm()),
              );
            },
          ),
        ),
      ),
    );
  }
}
