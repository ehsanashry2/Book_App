import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/route/app_router.dart';
import 'package:innove_final_project/core/route/routes.dart';
import 'package:innove_final_project/core/theme/theme_data/dark_theme.dart';
import 'package:innove_final_project/core/theme/theme_data/light_theme.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      themeMode: themeNotifier.themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: Routes.onboarding,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
