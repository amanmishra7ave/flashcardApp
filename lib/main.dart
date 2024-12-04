import 'package:flutter/material.dart';
import 'screens/subject_selection_screen.dart';

void main() {
  runApp(GateCSFlashcardApp());
}

class GateCSFlashcardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GATE CS Flashcards',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SubjectSelectionScreen(),
    );
  }
}
