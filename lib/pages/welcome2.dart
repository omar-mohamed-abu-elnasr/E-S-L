import 'package:final_project/pages/welcome3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/button.dart';

class Welcome2 extends StatefulWidget {
  static const String routeName = "welcome2";

  Welcome2({super.key});

  @override
  State<Welcome2> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome2> {
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(AppLocalizations.of(context)!.noNeed,
                        style: theme.textTheme.bodyLarge),
                  )
                ],
              ),
            ),
            Image(
              image: AssetImage("assets/images/Attention.png"),
              height: 240,
              width: 400,
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.youCanEasy,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Image(
              image: AssetImage("assets/images/loading2.png"),
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
                        Navigator.pushNamed(context, Welcome3.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF719CC8),
                                  Color(0xFF8D36C6)
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
