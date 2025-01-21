import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "Quote1",
    "Quote2",
    "Quote3",
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
            quote,
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
