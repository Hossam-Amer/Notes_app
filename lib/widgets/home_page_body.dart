import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_card.dart';
import 'cutom_app_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [CustomeAppBar(icon: Icons.search, text: "Notes",onTap: (){},),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return NoteCard(onTap: () {
                
              },);
            }),
          ),
        ],
      )
          );
  }
}
