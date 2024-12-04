
import 'package:flutter/foundation.dart';

class Flashcard {
  final String id;
  final String question;
  final String answer;
  final String subject;
  int difficulty;
  int timesStudied;
  DateTime? lastStudied;

  Flashcard({
    required this.id,
    required this.question,
    required this.answer,
    required this.subject,
    this.difficulty = 1,
    this.timesStudied = 0,
    this.lastStudied,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'question': question,
        'answer': answer,
        'subject': subject,
        'difficulty': difficulty,
        'timesStudied': timesStudied,
        'lastStudied': lastStudied?.toIso8601String(),
      };

  factory Flashcard.fromJson(Map<String, dynamic> json) => Flashcard(
        id: json['id'],
        question: json['question'],
        answer: json['answer'],
        subject: json['subject'],
        difficulty: json['difficulty'] ?? 1,
        timesStudied: json['timesStudied'] ?? 0,
        lastStudied: json['lastStudied'] != null
            ? DateTime.parse(json['lastStudied'])
            : null,
      );
}

class FlashcardModel extends ChangeNotifier {
  List<Flashcard> _flashcards = [];
  List<Flashcard> get flashcards => _flashcards;

  void addFlashcard(Flashcard card) {
    _flashcards.add(card);
    notifyListeners();
  }

  void updateFlashcard(Flashcard updatedCard) {
    final index = _flashcards.indexWhere((card) => card.id == updatedCard.id);
    if (index != -1) {
      _flashcards[index] = updatedCard;
      notifyListeners();
    }
  }
}
