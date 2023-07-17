import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 11.0,
          vertical: 8,
        ),
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovaklidatemode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  String? title;
  String? content;
  final void Function()? onTap;
  _AddNoteFormState({this.onTap,this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovaklidatemode,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
           CustomTextField(
              onSaved: (value) {
                title = value;
              },
              text: title),
          const SizedBox(
            height: 30,
          ),
           CustomTextField(
            text: content,
            
             onSaved: (value) {
                content = value;
              },
            maxLines: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: GestureDetector(onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovaklidatemode=AutovalidateMode.always; 
              }
            },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(98, 253, 214, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: const Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
