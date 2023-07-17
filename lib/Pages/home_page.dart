import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          grade: 100,
        ),
      ),
      body: const HomePageBody(),
    );
  }
}
