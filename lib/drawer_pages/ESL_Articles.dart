import 'package:final_project/drawer_pages/ESL_article_item.dart';
import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../pages/welcome3.dart';

class ESLArticle extends StatelessWidget {
  static const String routeName = "ESLArticle";

  const ESLArticle({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF8D36C6), Color(0xFF419AF5)]))),
        leading: IconButton(
            onPressed: () => Navigator.pushNamed(context, home.routeName),
            icon: Icon(
              Icons.arrow_back,
              color: theme.colorScheme.onSecondary,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              AppLocalizations.of(context)!.eslArticles,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
          ),
          ArticleItem(
              title: AppLocalizations.of(context)!.fakeSign,
              subTitle: "By : Washington Post",
              date: AppLocalizations.of(context)!.date1,
              followLink:
                  "https://www.washingtonpost.com/wellness/2023/05/08/fake-sign-language-asl-tiktok/"),
          ArticleItem(
              title: AppLocalizations.of(context)!.signLanguageOverView,
              subTitle: "By : ScienceDirect",
              date: AppLocalizations.of(context)!.date2,
              followLink:
                  "https://www.sciencedirect.com/topics/agricultural-and-biological-sciences/sign-language"),
          ArticleItem(
              title: AppLocalizations.of(context)!.definitionSign,
              subTitle: "By : Britannica",
              date: AppLocalizations.of(context)!.date3,
              followLink:
                  "https://www.linkedin.com/pulse/benefits-learning-sign-language-expanding-horizons-k9pcf"),
          ArticleItem(
              title: AppLocalizations.of(context)!.exploring,
              subTitle: "By : Washington Post",
              date: AppLocalizations.of(context)!.date4,
              followLink:
                  "https://www.linkedin.com/pulse/benefits-learning-sign-language-expanding-horizons-k9pcf"),
        ],
      ),
    );
  }
}
