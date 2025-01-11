import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/features/home/view/screens/home_screen.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("Welcome to the Favorite Page")),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text("Welcome to the Profile Page")),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: Colors.transparent,
      body: Center(child: Text("Welcome to the Settings Page")),
    );
  }
}

class BottomNavBarSection extends StatefulWidget {
  const BottomNavBarSection({super.key});

  @override
  _BottomNavBarSectionState createState() => _BottomNavBarSectionState();
}

class _BottomNavBarSectionState extends State<BottomNavBarSection> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        Color backgroundColor = themeNotifier.isDark
            ? const Color(0xFFEBE9DC).withOpacity(0.5)
            : const Color(0xFF121416).withOpacity(0.5);

        Color iconColor = themeNotifier.isDark
            ? AppColors.darkBackground
            :AppColors.lightBackground;


        return Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              height: 72,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(48)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  4,
                      (index) => GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: SvgPicture.asset(
                      index == 0
                          ? 'assets/icons/1.svg'
                          : index == 1
                          ? 'assets/icons/2.svg'
                          : index == 2
                          ? 'assets/icons/3.svg'
                          : 'assets/icons/4.svg',
                      width: 24,
                      height: 24,
                      color: iconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
