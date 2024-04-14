import 'package:final_project/drawer_pages/ContactItem.dart';
import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUs extends StatelessWidget {
  static const String routeName = "ContactUs";

  const ContactUs({super.key});

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
          ContactItem(
              labelName: AppLocalizations.of(context)!.aboutUs,
              subTitle: AppLocalizations.of(context)!.weAre),
          ContactItem(
            labelName: AppLocalizations.of(context)!.aboutThe,
            subTitle: AppLocalizations.of(context)!.whenWe,
          ),
          Container(
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: theme.colorScheme.onBackground,
                borderRadius: BorderRadius.circular(10)),
            width: mediaQuery.width,
            child: Column(
              children: [
                Text(AppLocalizations.of(context)!.contactUs,
                    style: theme.textTheme.titleMedium),
                Text(AppLocalizations.of(context)!.havingProblem,
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    onTap: () => launchUrlString("https://www.google.com"),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Group.png"),
                        Text(
                          "EgyptianSignLanguage@gmail.com",
                          style: theme.textTheme.displaySmall,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
