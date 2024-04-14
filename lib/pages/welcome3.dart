import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Welcome3 extends StatefulWidget {
  static const String routeName = "welcome3";

  Welcome3({super.key});

  @override
  State<Welcome3> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(AppLocalizations.of(context)!.letsGet,
                        style: theme.textTheme.bodyLarge),
                  )
                ],
              ),
            ),
            Image(
              image: AssetImage("assets/images/PictureWelcome3.png"),
              height: 240,
              width: 400,
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.itHelps,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Image(
              image: AssetImage("assets/images/loading3.png"),
              height: 90,
              width: 330,
              fit: BoxFit.contain,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  child: MyOutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    gradient: LinearGradient(
                        end: Alignment.bottomRight,
                        begin: Alignment.topRight,
                        colors: [
                          Color(0xFF719CC8),
                          theme.colorScheme.onPrimary
                        ]),
                    child: Text(AppLocalizations.of(context)!.back,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, home.routeName, (route) => false);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF719CC8),
                                  theme.colorScheme.onPrimary
                                ])),
                        child: Text(AppLocalizations.of(context)!.next,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
