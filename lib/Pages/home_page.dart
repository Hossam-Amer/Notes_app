import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: const Color.fromRGBO(45, 45, 45, 1),
          title: null,
          actions: [],
          flexibleSpace: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Notes",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(56, 56, 56, 1),
                      ),
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 8,
                      ),
                      child: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      print("asdasdsf");
                    },
                  ),
                ],
              )),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(56, 56, 56, 0.9),
          child: Column(
            children: [],
          ),
        ));
  }
}
