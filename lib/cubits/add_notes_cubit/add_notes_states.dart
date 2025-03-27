part of "add_notes_cubits.dart";

abstract class AddNotesStates {}

class initialAddNOtesState extends AddNotesStates {}

class LoadingAddNOtesState extends AddNotesStates {}

class SuccessfulAddNOtesState extends AddNotesStates {}

class FailureAddNOtesState extends AddNotesStates {
  final String errorMessage;

  FailureAddNOtesState(this.errorMessage);
}
