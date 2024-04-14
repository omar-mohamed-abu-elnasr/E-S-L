import 'package:final_project/drawer_pages/ContactUs.dart';
import 'package:final_project/drawer_pages/ESL_Articles.dart';
import 'package:final_project/drawer_pages/ESL_Videos.dart';
import 'package:final_project/drawer_pages/Settings.dart';
import 'package:final_project/pages/home/home.dart';
import 'package:final_project/pages/splashscreen/splshscreen.dart';
import 'package:final_project/pages/welcome1.dart';
import 'package:final_project/pages/welcome2.dart';
import 'package:final_project/pages/welcome3.dart';
import 'package:flutter/material.dart';
import 'core/theme/application-theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale("ar"),
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          Welcome1.routeName: (context) => Welcome1(),
          Welcome2.routeName: (context) => Welcome2(),
          Welcome3.routeName: (context) => Welcome3(),
          home.routeName: (context) => home(),
          ESLArticle.routeName: (context) => ESLArticle(),
          ESLVideos.routeName: (context) => ESLVideos(),
          Settings.routeName: (context) => Settings(),
          ContactUs.routeName: (context) => ContactUs(),
        },
      );
}
