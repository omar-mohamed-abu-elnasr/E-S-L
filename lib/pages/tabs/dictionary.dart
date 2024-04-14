import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Dictionary extends StatelessWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: mediaQuery.width,
                    child: Text(
                      AppLocalizations.of(context)!.theLanguage,
                      style: theme.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: mediaQuery.width,
                    child: Text(
                      AppLocalizations.of(context)!.theESL,
                      style: theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: mediaQuery.width,
                    child: Image(
                      image: AssetImage("assets/images/dictionary.png"),
                      width: 400,
                      height: 400,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
