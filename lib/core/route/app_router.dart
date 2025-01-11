import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innove_final_project/core/route/routes.dart';
import 'package:innove_final_project/features/home/view/widgets/buttom_nav_bar.dart';
import 'package:innove_final_project/features/onboarding/onboarding_screen.dart';
import 'package:innove_final_project/features/home/view/screens/home_screen.dart';



class AppRouter {
  const AppRouter._();

  static Route generateRoute(RouteSettings settings) {

    return getPageRoute(settings: settings, onThemeToggle: () {  });
  }

  static Widget getScreenWidgetByRouteName(String routeName, {required VoidCallback onThemeToggle}) {
    switch (routeName) {
      case Routes.splash:
        return const Center(child: Text("Splash Screen Placeholder"));
      case Routes.onboarding:
        return OnboardingScreen(onThemeToggle: onThemeToggle);
      case Routes.home:
        return  HomePage();
      case Routes.buttom_nav:
        return  BottomNavBarSection();
      default:
        return const Center(child: Text("Page Not Found"));
    }
  }

  static PageRoute getPageRoute({required RouteSettings settings, required VoidCallback onThemeToggle}) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (_) => getScreenWidgetByRouteName(settings.name!, onThemeToggle: onThemeToggle),
        settings: settings,
      );
    } else {
      return MaterialPageRoute(
        builder: (_) => getScreenWidgetByRouteName(settings.name!, onThemeToggle: onThemeToggle),
        settings: settings,
      );
    }
  }
  static PageRoute getPageRouteByWidget({required Widget screen}) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(builder: (context) => screen);
    } else {
      return MaterialPageRoute(builder: (context) => screen);
    }
  }
}


