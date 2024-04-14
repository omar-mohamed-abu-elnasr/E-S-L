import 'package:final_project/pages/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Welcome1 extends StatefulWidget {
  static const String routeName = "welcome1";

  Welcome1({super.key});

  @override
  State<Welcome1> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<Welcome1> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
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
                    child: Text(AppLocalizations.of(context)!.welcomeTo,
                        style: theme.textTheme.bodyLarge),
                  ),
                  Image(image: AssetImage("assets/images/ESL.png"))
                ],
              ),
            ),
            Image(
              image: AssetImage("assets/images/hello.png"),
              height: 240,
              width: 400,
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(AppLocalizations.of(context)!.ourApplication,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium),
            ),
            Container(
              child: Image(
                image: AssetImage("assets/images/loading.png"),
                height: 73,
                width: 330,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 50, width: 120, child: Center()),
                Container(
                  height: 50,
                  width: 120,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Welcome2.routeName);
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
