import 'package:flutter/material.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class AuthorCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const AuthorCard({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: themeNotifier.borderColor,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: ClipOval(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: 96,
                height: 96,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style:  TextStyle( color: themeNotifier.textColor, fontSize: 14),
        ),
      ],
    );
  }
}

