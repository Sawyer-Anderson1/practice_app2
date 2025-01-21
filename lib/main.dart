import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("Quote1", "author1"),
    Quote("Quote2", "author2"),
    Quote("Quote3", "author3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      appBar: AppBar(
        title: Text(
          "Awesome Quotes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text(
            quote.content + " by " + quote.author,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          );
        }).toList(),
      )
    );
  }
}
