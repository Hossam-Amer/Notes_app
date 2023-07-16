import 'package:flutter/material.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 11.0,
          vertical: 8,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'content',
              ),
              maxLines: 5,
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(98, 253, 214, 1),
                      borderRadius: BorderRadius.circular(15)),
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
      ),
    );
  }
}
