import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticleItem extends StatelessWidget {
  final String title, subTitle, date, followLink;

  const ArticleItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.date,
      required this.followLink});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 200,
          width: mediaQuery.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  title,
                  textScaleFactor: 1.2,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(subTitle,
                      style: theme.textTheme.bodyMedium, textScaleFactor: 1.2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(date),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 60,
                      width: 185,
                      child: GestureDetector(
                          onTap: () => launchUrlString(followLink),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF719CC8),
                                      Color(0xFF8D36C6)
                                    ])),
                            child: Text(
                                AppLocalizations.of(context)!.readArticle,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
