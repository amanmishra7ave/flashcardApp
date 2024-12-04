// lib/models/subject_model.dart
import 'package:flutter/foundation.dart';

class Subject {
  final String id;
  final String name;
  final String icon;
  final List<Flashcard> flashcards;

  Subject({
    required this.id,
    required this.name,
    required this.icon,
    required this.flashcards,
  });
}

class Flashcard {
  final String id;
  final String question;
  final String answer;
  int difficulty;
  int timesStudied;

  Flashcard({
    required this.id,
    required this.question,
    required this.answer,
    this.difficulty = 1,
    this.timesStudied = 0,
  });
}
