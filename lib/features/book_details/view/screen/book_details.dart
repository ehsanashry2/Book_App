import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/route/routes.dart';
import 'package:innove_final_project/features/book_details/view/widget/book_read_and_buy.dart';
import 'package:innove_final_project/features/book_details/view/widget/book_details_content.dart';
import 'package:innove_final_project/features/book_details/view/widget/give_rate.dart';
import 'package:innove_final_project/features/book_details/view/widget/review_list.dart';
import 'package:innove_final_project/features/book_details/view/widget/similar_book_section.dart';
import 'package:innove_final_project/features/book_details/view/widget/book_tags.dart';
import 'package:innove_final_project/features/book_details/view/widget/submit_buttom.dart';
import 'package:innove_final_project/features/book_details/view/widget/write_review.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';
class BookDetailsPage extends StatelessWidget {
  final BookModel book;

  const BookDetailsPage({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: themeNotifier.backgroundColor,
             leading: IconButton(
               icon: Icon(
                 Icons.arrow_back_ios_new,
                 size: 24,
                 color: themeNotifier.textColor,
               ),
               onPressed: () {
                 Navigator.pushNamed(context, Routes.buttom_nav);
               },
             ),
             actions: [

               IconButton(
                 icon: SvgPicture.asset(
                   'assets/icons/heart.svg',
                   color: themeNotifier.textColor,
                   height: 24,
                   width: 24,
                 ),
                 onPressed: () {},
               ),
             ],
            ),
            const SizedBox(height: 16,),
            BookDetailsContent(
              book: book,
              themeNotifier: themeNotifier,
            ),
            const BookTags(),
            SimilarBooksSection(themeNotifier: themeNotifier),
            const SizedBox(height: 24),
            const ReviewList(),
            const WriteReview(),
            const GiveARate(),
            const SubmitButton(),
            const SizedBox(height: 24,),
            const BookReadAnBuy(),
            const SizedBox(height:40),
          ],
        ),
      ),
    );
  }
}
