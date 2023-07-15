import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 9.0,
        bottom: 8,
        left: 10,
        right: 10,
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 0.6 * MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "FlutterSDJHfbhdsaflafbdsyufgdyigfdyi study",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      "videhvbuidbfuasdfhbkadsfbkahdsbfiladsbfliasudyfiadsfvbaliudsvfiuadfviasudvfvadsuiaewfb,efas",
                      style: TextStyle(
                        overflow: TextOverflow.fade,
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "22 May 2024",
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
