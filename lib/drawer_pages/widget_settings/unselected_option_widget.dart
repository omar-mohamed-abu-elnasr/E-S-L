import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatelessWidget {
  final String unSelectedTitle;

  const UnSelectedOptionWidget({super.key, required this.unSelectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: theme.colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.primaryColor,
            )),
        child: Text(unSelectedTitle));
  }
}
