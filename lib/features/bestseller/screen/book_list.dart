import 'package:flutter/material.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/mostpopular/view/screen/book_card_view.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BookModel> bookModels = [
      BookModel(
        imagePath: 'assets/images/book4.png',
        title: 'Dogs And Wolves',
        author: 'Price Ainsworth',
        price: 10,
        category: '#Novel',
        description: 'A captivating story of two best friends, a dog and a wolf, facing harsh challenges.',
      ),
      BookModel(
        imagePath: 'assets/images/book5.png',
        title: 'Lightfall',
        author: 'Ingrid Chabbert',
        price: 10,
        category: '#Graphic Novel',
        description: 'A graphic novel with breathtaking art, showcasing an emotional journey of self-discovery.',
      ),
      BookModel(
        imagePath: 'assets/images/book6.png',
        title: 'Lightfall',
        author: 'Ingrid Chabbert',
        price: 10,
        category: '#Graphic Novel',
        description: 'A gripping tale about light, darkness, and the choices we make.',
      ),
      BookModel(
        imagePath: 'assets/images/book1.png',
        title: 'Lightfall',
        author: 'Ingrid Chabbert',
        price: 10,
        category: '#Novel',
        description: 'This novel explores the complex nature of human emotions in modern relationships.',
      ),
      BookModel(
        imagePath: 'assets/images/book2.png',
        title: 'Lightfall',
        author: 'Ingrid Chabbert',
        price: 10,
        category: '#Fantasy',
        description: 'An adventure in a fantastical world where magic is real and everyone has a secret.',
      ),
      BookModel(
        imagePath: 'assets/images/book3.png',
        title: 'Dogs And Wolves',
        author: 'Price Ainsworth',
        price: 10,
        category: '#Novel',
        description: 'A touching narrative about loyalty, friendship, and survival in the wild.',
      ),
    ];

    return SizedBox(
      height:  235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: bookModels.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return BookCardView(book: bookModels[index]);
        },
      ),
    );
  }
}
