import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String selectedFilter = 'motivations & inspiration';

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Padding(
            padding: const EdgeInsets.only(left:16),
            child: Text(
              "Categories",
              style: TextStyleHelper.font24W700Primary(themeNotifier),
            ),
          ),
          const SizedBox(height: 16),
          buildCategoryRow([
            'Motivations & Inspiration',
            'Drama',
            'Science',
          ]),
          const SizedBox(height: 10),
          buildCategoryRow([
            'Education',
            'Novels',
            'Horror',
            'Trending',
          ]),
          const SizedBox(height: 10),
          buildCategoryRow([
            'Money & Investment',
            'Health & Nutritions',
          ]),
          const SizedBox(height: 10),
          buildCategoryRow([
            'History',
            'Fantacy',
            'Romance',
            'Scientific Literature',
          ]),
        ],
      ),
    );
  }

  Widget buildCategoryRow(List<String> filters) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: filters.map((filter) {
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: CategoryCard(
                label: filter,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
class CategoryCard extends StatelessWidget {
  final String label;

  const CategoryCard({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    bool isDark = themeNotifier.isDark;
    Color backgroundColor = isDark ? AppColors.containercolor : AppColors.lightBackground;
    Color borderColor = isDark ?AppColors.containercolor  : AppColors.darkBackground;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Text(
        label,
        style:TextStyleHelper.font16W500Primary(themeNotifier),
      ),
    );
  }
}

