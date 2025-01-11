import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/book_details/model/review_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'review_card.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final reviews = [
      ReviewModel(
        imagePath: 'assets/images/reviewer.png',
        name: 'John Doe',
        rating: 5.0,
        date: 'May 13th 2023',
        description: 'A fascinating look into the world of wolves and dogs. The authors knowledge shines through on every page. A thought-provoking read that will stay with you long after the final chapter.',
      ),
      ReviewModel(
        imagePath: 'assets/images/reviewer.png',
        name: 'John Doe',
        rating: 5.0,
        date: 'May 13th 2023',
        description: 'A fascinating look into the world of wolves and dogs. The authors knowledge shines through on every page. A thought-provoking read that will stay with you long after the final chapter.',
      ),
      ReviewModel(
        imagePath: 'assets/images/reviewer.png',
        name: 'Sarah Smith',
        rating: 3.0,
        date: 'May 13th 2023',
        description: 'A fascinating look into the world of wolves and dogs. The authors knowledge shines through on every page. A thought-provoking read that will stay with you long after the final chapter.',
      ),
      ReviewModel(
        imagePath: 'assets/images/reviewer.png',
        name: 'Sarah Smith',
        rating: 4.0,
        date: 'May 13th 2023',
        description: 'A fascinating look into the world of wolves and dogs. The authors knowledge shines through on every page. A thought-provoking read that will stay with you long after the final chapter.',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                "Review",
                style: TextStyleHelper.font24W700Primary(themeNotifier),
              ),
             const Spacer(),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyleHelper.font16W500underline(themeNotifier),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(
                    'assets/icons/arrow_forward.svg',
                    width: 20,
                    height: 20,
                    color: themeNotifier.textColor,
                  ),
              ],
          ),

            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            return ReviewCard(review: reviews[index]);
          },
        ),
      ],
    );
  }
}
