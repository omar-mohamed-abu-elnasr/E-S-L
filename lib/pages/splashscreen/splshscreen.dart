import 'dart:async';
import 'package:final_project/pages/welcome1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, Welcome1.routeName);
      },
    );

    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/ESL.png",
            fit: BoxFit.contain, height: 120, width: mediaQuery.width),
        Text(
          textAlign: TextAlign.center,
          AppLocalizations.of(context)!.egyptianSign,
          style: TextStyle(
              color: Color(0xFF2393FF),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.weHearYou,
              style: TextStyle(
                  color: Color(0xFF8D36C6).withOpacity(.8), fontSize: 20),
            ),
            SizedBox(
              width: 5,
            ),
            Image(image: AssetImage("assets/images/Vector.png"))
          ],
        )
      ],
    ));
  }
}
