import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/book_details/view/widget/book_description.dart';
import 'package:innove_final_project/features/book_details/view/widget/book_attribute.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';

class BookDetailsContent extends StatelessWidget {
  final BookModel book;
  final ThemeNotifier themeNotifier;

  const BookDetailsContent({super.key,
    required this.book,
    required this.themeNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 163,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(book.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               SizedBox(width: 16.sp),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17.sp),
                    Text(
                      "#2 On Trending",
                      style: TextStyleHelper.font14W400Italic(themeNotifier),
                    ),
                    SizedBox(height: 16.sp),
                    SizedBox(
                      height: 77.sp,
                      child: Text(
                        book.title,
                        style: TextStyleHelper.font24W700Primary(themeNotifier),
                      ),
                    ),
                    SizedBox(height: 4.sp),
                    Text(
                      "by ${book.author}",
                      style: TextStyleHelper.font16W400Primary(themeNotifier),
                    ),
                    SizedBox(height: 16.sp),
                    Text(
                      'Published May 13th 2016',
                      style: TextStyleHelper.font14W400primary(themeNotifier),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.sp),
          const BookAttributesRow(),
          BookDescription(book: book),

        ],
      ),
    );
  }
}
