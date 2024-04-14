import 'package:final_project/drawer_pages/widget_settings/language_bottom_sheet_widget.dart';
import 'package:final_project/drawer_pages/widget_settings/settings_item.dart';
import 'package:final_project/drawer_pages/widget_settings/theme_bottom_sheet_widget.dart';
import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  static const String routeName = "Sittings";

  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
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
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: ListView(
            children: [
              SettingItem(
                settingOptionTitle: AppLocalizations.of(context)!.language,
                description: AppLocalizations.of(context)!.youCanChangeLanguage,
                selectedOption: "English",
                onOptionTaped: () {
                  showLanguageBottomSheet(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              SettingItem(
                settingOptionTitle: AppLocalizations.of(context)!.themeMode,
                description: AppLocalizations.of(context)!.youCanChangeTheme,
                selectedOption: "Dark",
                onOptionTaped: () {
                  showThemeBottomSheet(context);
                },
              )
            ],
          ),
        ));
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheetWidget(),
    );
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheetWidget(),
    );
  }
}
