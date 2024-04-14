import 'package:final_project/drawer_pages/widget_settings/selected_option_widget.dart';
import 'package:final_project/drawer_pages/widget_settings/unselected_option_widget.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: theme.colorScheme.onBackground.withOpacity(.99),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWidget(selectedTitle: "English"),
          SizedBox(
            height: 30,
          ),
          UnSelectedOptionWidget(unSelectedTitle: "عربي"),
        ],
      ),
    );
  }
}
