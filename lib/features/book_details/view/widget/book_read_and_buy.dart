import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';


class BookReadAnBuy extends StatelessWidget {
  const BookReadAnBuy({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 171,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: themeNotifier.isDark ? AppColors.textsecondary2 : AppColors.textsecondary,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/reviewer.png',
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/reviewer.png',
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/reviewer.png',
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/reviewer.png',
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "+2500 People read",
                  style: TextStyle(
                    color: AppColors.lightBackground,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'NeueMontreal',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: AppColors.lightBackground,),
                      ),
                      child: const Center(
                        child: Text(
                          "Read Book",
                          style: TextStyle(
                            color: AppColors.lightBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'NeueMontreal',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Logic for buy book
                    },
                    child: Container(
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: AppColors.lightBackground,

                      ),
                      child:  const Center(
                        child: Text(
                          "Buy Book",
                          style: TextStyle(
                            color: AppColors.darkBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'NeueMontreal',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
