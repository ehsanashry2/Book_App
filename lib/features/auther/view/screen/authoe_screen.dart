import 'package:flutter/material.dart';
import 'package:innove_final_project/features/auther/model/auther_model.dart';
import 'package:innove_final_project/features/auther/view/screen/auther_card.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class ExploreAuthorsSection extends StatelessWidget {
  final List<Author> authors = [
    Author(imageUrl: 'assets/images/authors1.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors2.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors3.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors1.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors2.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors3.png', name: 'Author Name'),
  ];

   ExploreAuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Authors",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: themeNotifier.textColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: themeNotifier.textColor,
                      decoration: TextDecoration.underline,
                      decorationColor:themeNotifier.textColor,
                    ),
                  ),
                  const SizedBox(width: 4,),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: themeNotifier.textColor,
                  ),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left:16),
            child: Row(
              children: List.generate(authors.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 34.0),
                  child: AuthorCard(
                    imageUrl: authors[index].imageUrl,
                    name: authors[index].name,
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
