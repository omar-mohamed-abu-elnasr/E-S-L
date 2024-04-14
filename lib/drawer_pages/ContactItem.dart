import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String labelName, subTitle;

  const ContactItem(
      {super.key, required this.labelName, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: theme.colorScheme.onBackground,
          borderRadius: BorderRadius.circular(10)),
      width: mediaQuery.width,
      child: Column(
        children: [
          Text(labelName, style: theme.textTheme.titleMedium),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
