import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef SettingsOptionClicked = void Function();

class SettingItem extends StatelessWidget {
  final String settingOptionTitle, selectedOption, description;
  final SettingsOptionClicked onOptionTaped;

  const SettingItem(
      {super.key,
      required this.settingOptionTitle,
      required this.onOptionTaped,
      required this.selectedOption,
      required this.description});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: theme.colorScheme.onBackground,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                settingOptionTitle,
                textAlign: TextAlign.start,
                style: theme.textTheme.titleLarge,
              ),
              Text(description,
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center),
              GestureDetector(
                onTap: onOptionTaped,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: mediaQuery.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: theme.primaryColor, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedOption),
                      Icon(
                        Icons.arrow_drop_down,
                        color: theme.colorScheme.secondary,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
