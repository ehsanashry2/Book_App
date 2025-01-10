import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});

  @override
  _ButtonSectionState createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  String selectedFilter = '#Most Popular';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left:24,top:24,bottom: 16),
      child: Row(
        children: [
          FilterButton(
            label: '#Most Popular',
            isActive: selectedFilter == '#Most Popular',
            onTap: () {
              setState(() {
                selectedFilter = '#Most Popular';
              });
            },
          ),
          const SizedBox(width: 6),
          FilterButton(
            label: '#For You',
            isActive: selectedFilter == '#For You',
            onTap: () {
              setState(() {
                selectedFilter = '#For You';
              });
            },
          ),
        ],
      ),
    );
  }
}
class FilterButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const FilterButton({super.key,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    bool isDark = themeNotifier.isDark;
    Color backgroundColor;
    Color textColor;
    Color borderColor;

    if (isActive) {
      backgroundColor = isDark ? AppColors.lightBackground : AppColors.darkBackground;
      textColor = isDark ?  AppColors.textLight :AppColors.textDark ;
      borderColor = isDark ? AppColors.borderLight : AppColors.borderDark;
    } else {
      backgroundColor = isDark ? AppColors.darkBackground : AppColors.lightBackground;
      textColor = isDark ?AppColors.textDark : AppColors.textLight;
      borderColor = isDark ? AppColors.borderDark : AppColors.borderLight;
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
