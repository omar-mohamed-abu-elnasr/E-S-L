import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VideosItem extends StatelessWidget {
  final String linkVideo, photoName, timeVideo, titleVideo;

  const VideosItem(
      {super.key,
      required this.linkVideo,
      required this.timeVideo,
      required this.titleVideo,
      required this.photoName});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: 250,
          width: mediaQuery.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.values[3],
            children: [
              InkWell(
                onTap: () => launchUrlString(linkVideo),
                child: Container(
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Image(
                            image: AssetImage(photoName),
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            height: 150)),
                    Container(
                      color: Color(0x4D988282),
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(timeVideo,
                          style: TextStyle(color: Colors.white)),
                    )
                  ]),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(titleVideo,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
