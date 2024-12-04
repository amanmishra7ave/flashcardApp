
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/flashcard_model.dart';

class FlashcardService {
  static const String _storageKey = 'gate_cs_flashcards';

  Future<List<Flashcard>> loadFlashcards() async {
    final prefs = await SharedPreferences.getInstance();
    final cardsJson = prefs.getStringList(_storageKey) ?? [];
    return cardsJson
        .map((cardJson) => Flashcard.fromJson(json.decode(cardJson)))
        .toList();
  }

  Future<void> saveFlashcards(List<Flashcard> flashcards) async {
    final prefs = await SharedPreferences.getInstance();
    final cardsJson = flashcards
        .map((card) => json.encode(card.toJson()))
        .toList();
    await prefs.setStringList(_storageKey, cardsJson);
  }
}