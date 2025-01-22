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
    Quote(content: "Quote1", author: "author1"),
    Quote(content: "Quote2", author: "author2"),
    Quote(content: "Quote3", author: "author3"),
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
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
      )
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({ required this.quote });

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
          ],
        ),
      ),
    );
  }
}
