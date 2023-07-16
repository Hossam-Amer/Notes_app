import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/cutom_app_bar.dart';

class EditeNotePage extends StatelessWidget {
  const EditeNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomeAppBar(icon: Icons.check, text: "Edit", onTap: () {}),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomTextField(
                text: "Title",
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomTextField(
                text: "Content",
                maxLines: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
