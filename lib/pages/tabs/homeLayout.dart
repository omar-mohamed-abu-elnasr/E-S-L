import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeLayOut extends StatelessWidget {
  const HomeLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => launchUrlString("https://www.google.com"),
                  child: Container(child: Text("Home"))),
            ],
          ),
        ],
      ),
    );
  }
}
