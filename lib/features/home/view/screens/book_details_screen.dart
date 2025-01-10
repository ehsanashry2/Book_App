import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Details"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/book_cover.png'),
          const Text(
            "Book Title",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Book Description...",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
