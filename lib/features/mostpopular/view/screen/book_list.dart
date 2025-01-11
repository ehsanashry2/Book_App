import 'package:flutter/material.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/mostpopular/view/screen/book_card_view.dart';
class BookListSection extends StatelessWidget {
  const BookListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BookModel> books = [
      BookModel(
        imagePath: 'assets/images/book1.png',
        category: '#Novel',
        title: 'Dogs And Wolves',
        author: 'Price Ainsworth',
        price: 10,
        description:
        'Three delivery boys embark on a journey through the remnants of a crumbling era. As they brave the dangers of their world, they explore what it means to be young, to have friends, and to survive.  This slice of life story turns the post-apocalyptic genre sideways, subverts expectations, and brings a new perspective to old tropes, Read More...',
      ),
      BookModel(
        imagePath: 'assets/images/book2.png',
        category: '#Novel',
        title: 'Lightfall',
        author: 'Ingrid Chabbert',
        price: 12,
        description:
        'Three delivery boys embark on a journey through the remnants of a crumbling era. As they brave the dangers of their world, they explore what it means to be young, to have friends, and to survive.  This slice of life story turns the post-apocalyptic genre sideways, subverts expectations, and brings a new perspective to old tropes, Read More...',
      ),
      BookModel(
        imagePath: 'assets/images/book3.png',
        category: '#Novel',
        title: 'Another World',
        author: 'Jerel Dye',
        price: 14,
        description:
        'Three delivery boys embark on a journey through the remnants of a crumbling era. As they brave the dangers of their world, they explore what it means to be young, to have friends, and to survive.  This slice of life story turns the post-apocalyptic genre sideways, subverts expectations, and brings a new perspective to old tropes, Read More...',
      ),
    ];

    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: books.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return BookCardView(book: books[index]);
        },
      ),
    );
  }
}

