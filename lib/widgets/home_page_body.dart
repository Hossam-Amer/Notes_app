import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: ListView.builder(itemBuilder: (context,index){
          return NoteCard();
        }),
      )
          );
  }
}
