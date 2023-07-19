import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/assets/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async{
    emit(AddNoteCubitLoading());
    try{
    var notesBox=Hive.box<NoteModel>(kNoteBox);
 await notesBox.add(note);
  } catch(e){
    AddNoteCubitFailer(e.toString());
  }
}
}