import 'package:flutter/material.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/mostpopular/view/screen/most_popular.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContainerModel> containerModels = [
      ContainerModel(
        imagePath: 'assets/images/book4.png',
        firstText: '#novel',
        secondText: 'dogs and wolfs',
        thirdText: 'jerel dye',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book5.png',
        firstText: '#novel',
        secondText: 'dogs and wolfs',
        thirdText: 'carole maurel',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book6.png',
        firstText: '#novel',
        secondText: 'carole maurel',
        thirdText: 'dogs and wolfs',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book1.png',
        firstText: '#novel',
        secondText: 'dogs and wolfs',
        thirdText: 'Price ainsworth',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book2.png',
        firstText: '#novel',
        secondText: 'lightfall',
        thirdText: 'ingrid chabbert',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book3.png',
        firstText: '#novel',
        secondText: 'dogs and wolfs',
        thirdText: 'jerel dye',
        price: 10,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 16.0), // Add left padding
      child: Container(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: containerModels.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 8.0),  // Space between items
            child: ContainerView(models: [containerModels[index]]),
          ),
        ),
      ),
    );
  }
}

