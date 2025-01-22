import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[500],
      elevation: 5.0,
      shadowColor: Colors.deepPurple[700],
      margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              quote.content,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Text(
              " - " + quote.author,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.0),
            TextButton(
              onPressed: delete,
              iconAlignment: IconAlignment.end,
              child: Icon(
                Icons.cancel,
                color: Colors.deepPurple[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}