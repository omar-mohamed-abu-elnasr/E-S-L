import 'package:final_project/drawer_pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  navigateTo(String route, BuildContext context) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Drawer(
      width: mediaQuery.width * .8,
      child: Container(
        padding: EdgeInsets.only(top: 35),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF419AF5), Color(0xFF841CC8)])),
        child: ListView(
          padding: const EdgeInsets.all(30.0),
          children: <Widget>[
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.settings, size: 30),
              title: Text(AppLocalizations.of(context)!.settings,
                  style: theme.textTheme.titleSmall),
              onTap: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
            ),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.article, size: 30),
              title: Text(AppLocalizations.of(context)!.eslArticles,
                  style: theme.textTheme.titleSmall),
              onTap: () {
                navigateTo("ESLArticle", context);
              },
            ),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.drive_file_move, size: 30),
              title: Text(AppLocalizations.of(context)!.eslVideos,
                  style: theme.textTheme.titleSmall),
              onTap: () {
                navigateTo("ESLVideo", context);
              },
            ),
            ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.info, size: 30),
              title: Text(AppLocalizations.of(context)!.contactUs,
                  style: theme.textTheme.titleSmall),
              onTap: () {
                navigateTo("ContactUs", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
