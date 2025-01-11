import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/book_details/view/screen/book_details.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class BookCardView extends StatelessWidget {
  final BookModel book;

  const BookCardView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(
              book: book,
            ),
          ),
        );
      },
      child: Container(
        width: 142,
        height: 231,
        decoration: BoxDecoration(
          color: themeNotifier.continarColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              book.imagePath,
              width: 142,
              height: 144,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.category,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleHelper.font12W400Italic(themeNotifier),
                  ),
                  Text(
                    book.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleHelper.font16W500Primary(themeNotifier),
                  ),
                  Row(
                    children: [
                      Text(
                        book.author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyleHelper.font12W400Scondar(themeNotifier),
                      ),
                      const Spacer(),
                      Text(
                        '${book.price}\$',
                        style: TextStyleHelper.font12W700grey(themeNotifier),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
