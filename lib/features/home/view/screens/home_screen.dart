import 'package:flutter/material.dart';
import 'package:innove_final_project/features/auther/view/screen/authoe_screen.dart';
import 'package:innove_final_project/features/bestseller/screen/book_list.dart';
import 'package:innove_final_project/features/home/view/widgets/best_seller.dart';
import 'package:innove_final_project/features/home/view/widgets/categories.dart';
import 'package:innove_final_project/features/home/view/widgets/recent_book.dart';
import 'package:innove_final_project/features/mostpopular/view/screen/book_list.dart';
import 'package:provider/provider.dart';
import 'package:innove_final_project/features/home/view/widgets/most_popular.dart';
import 'package:innove_final_project/features/home/view/widgets/app_bar.dart';
import 'package:innove_final_project/features/home/view/widgets/search_field.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: themeNotifier.backgroundColor,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarSection(),
                  const SizedBox(height: 19),
                  const SearchTextField(),
                  const ButtonSection(),
                  const BookListSection(),
                  const SizedBox(height: 24,),
                  const CustomContainer(),
                  const BestSeller(),
                  const BookList(),
                  const Categories(),
                  // RecentBookSection(),
                 // CategorySection(),
                  ExploreAuthorsSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
