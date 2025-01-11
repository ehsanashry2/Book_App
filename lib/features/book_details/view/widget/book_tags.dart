import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/home/view/widgets/most_popular.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class BookTags extends StatefulWidget {
  const BookTags({super.key});

  @override
  _BookTagsState createState() => _BookTagsState();
}

class _BookTagsState extends State<BookTags> {
  String selectedFilter = '#best seller';

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.sp),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Tags',
              style: TextStyleHelper.font24W700Primary(themeNotifier),
            ),
          ),
          SizedBox(height: 16.sp),
          SizedBox(
            height: 106,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        FilterButton(
                          label: '#Drama',
                          isActive: selectedFilter == '#Drama',
                          onTap: () {
                            setState(() {
                              selectedFilter = '#Drama';
                            });
                          },
                        ),
                        const SizedBox(width: 6),
                        FilterButton(
                          label: '#Education',
                          isActive: selectedFilter == '#Education',
                          onTap: () {
                            setState(() {
                              selectedFilter = '#Education';
                            });
                          },
                        ),
                        const SizedBox(width: 6),
                        FilterButton(
                          label: '#Horror ',
                          isActive: selectedFilter == '#Horror',
                          onTap: () {
                            setState(() {
                              selectedFilter = '#Horror';
                            });
                          },
                        ),

                      ],
                    ),
                    const SizedBox(height: 8),
                   Row(
                     children: [
                       FilterButton(
                         label: '#Novels',
                         isActive: selectedFilter == '#Novels',
                         onTap: () {
                           setState(() {
                             selectedFilter = '#Novels';
                           });
                         },
                       ),
                       const SizedBox(width: 6),
                       FilterButton(
                         label: '#Motivations & Inspiration',
                         isActive: selectedFilter == '#Motivations & Inspiration',
                         onTap: () {
                           setState(() {
                             selectedFilter = '#Motivations & Inspiration';
                           });
                         },
                       )
                     ],
                   )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
