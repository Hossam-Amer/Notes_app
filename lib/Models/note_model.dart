import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveType(typeId: 0)
  final String? title;
  @HiveType(typeId: 1)
  final String? date;
  @HiveType(typeId: 2)
  final String? content;
  @HiveType(typeId: 3)
  final int color;
  NoteModel({
      this.title,
      this.date,
      this.content,
      this.color=1});
}
