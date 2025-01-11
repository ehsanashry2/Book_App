import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class BookDescription extends StatefulWidget {
  final BookModel book;

  const BookDescription({super.key, required this.book});

  @override
  _BookDescriptionState createState() => _BookDescriptionState();
}

class _BookDescriptionState extends State<BookDescription> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final bool isTruncated = widget.book.description.length > 240;
    final String truncatedText = isTruncated
        ? widget.book.description.substring(0, 240)
        : widget.book.description;

    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              "Book Description",
              style: TextStyleHelper.font24W700Primary(themeNotifier),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: TextStyleHelper.font16W400Primary(themeNotifier),
                children: [
                  TextSpan(
                    text: _isExpanded || !isTruncated
                        ? widget.book.description
                        : truncatedText,
                  ),
                  if (isTruncated)
                    TextSpan(
                      text: _isExpanded ? " Read Less" : " Read More...",
                      style: TextStyleHelper.font16W700Primary(themeNotifier),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
