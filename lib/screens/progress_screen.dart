
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/flashcard_model.dart';

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Progress'),
        centerTitle: true,
      ),
      body: Consumer<FlashcardModel>(
        builder: (context, model, child) {
          if (model.flashcards.isEmpty) {
            return Center(
              child: Text('No flashcards studied yet'),
            );
          }

          return ListView.builder(
            itemCount: model.flashcards.length,
            itemBuilder: (context, index) {
              final card = model.flashcards[index];
              return ListTile(
                title: Text(card.subject),
                subtitle: Text('Times Studied: ${card.timesStudied}'),
                trailing: Text(
                  'Last Studied: ${card.lastStudied != null ? card.lastStudied.toString().split(' ')[0] : 'Never'}',
                ),
              );
            },
          );
        },
      ),
    );
  }
}