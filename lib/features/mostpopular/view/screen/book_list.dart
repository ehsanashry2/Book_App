import 'package:flutter/material.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/mostpopular/view/screen/most_popular.dart';

class BookListSection extends StatelessWidget {
  const BookListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContainerModel> containerModels = [
      ContainerModel(
        imagePath: 'assets/images/book1.png',
        firstText: '#Novel',
        secondText: 'Dogs And Wolfs',
        thirdText: 'Price ainsworth',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book2.png',
        firstText: '#Novel',
        secondText: 'lightfall',
        thirdText: 'ingrid chabbert',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book3.png',
        firstText: '#Novel',
        secondText: 'dogs and wolfs',
        thirdText: 'jerel dye',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book1.png',
        firstText: '#Novel',
        secondText: 'dogs and wolfs',
        thirdText: 'Price ainsworth',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book2.png',
        firstText: '#Novel',
        secondText: 'lightfall',
        thirdText: 'ingrid chabbert',
        price: 10,
      ),
      ContainerModel(
        imagePath: 'assets/images/book3.png',
        firstText: '#Novel',
        secondText: 'dogs and wolfs',
        thirdText: 'jerel dye',
        price: 10,
      ),
    ];

    return SizedBox(
      height:  235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: containerModels.length,
        separatorBuilder: (context, index) => const SizedBox(width:16),
        itemBuilder: (context, index) => ContainerView(models: [containerModels[index]]),
      ),
    );
  }
}
