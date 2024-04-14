import 'package:final_project/drawer_pages/ESL_Videos_item.dart';
import 'package:final_project/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ESLVideos extends StatelessWidget {
  static const String routeName = "ESLVideo";

  const ESLVideos({super.key});

  @override
  Widget build(BuildContext context) {
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
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              AppLocalizations.of(context)!.eslVideos,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
          ),
          VideosItem(
              linkVideo:
                  "https://www.youtube.com/watch?v=tQ1LCmZTwg0&ab_channel=StreetLeverage",
              timeVideo: "29:32",
              titleVideo: AppLocalizations.of(context)!.theFutureOfSign,
              photoName: "assets/images/photo_sign1.jpg"),
          VideosItem(
              linkVideo:
                  "https://www.youtube.com/watch?v=giriCUKJQv0&ab_channel=ConnectRockDeaf",
              timeVideo: "04:30",
              titleVideo: AppLocalizations.of(context)!.moreFunctionSigns,
              photoName: "assets/images/photo_sign2.jpg"),
          VideosItem(
              linkVideo:
                  "https://www.youtube.com/watch?v=giriCUKJQv0&ab_channel=ConnectRockDeaf",
              timeVideo: "00:03",
              titleVideo: AppLocalizations.of(context)!.egyptOrASL,
              photoName: "assets/images/photo_sign3.jpg")
        ],
      ),
    );
  }
}
