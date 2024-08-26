import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

class Socialmedia extends StatelessWidget {
  const Socialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 5,
        top: Responsive.isMobile(context)
            ? Responsive.heightOfScreen(context) * 0.1
            : Responsive.widthOfScreen(context) * 0.2,
        child: const SizedBox(
          height: 200,
          width: 45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialIcons(
                  iconUrl:
                      "https://static.vecteezy.com/system/resources/previews/016/716/470/non_2x/linkedin-icon-free-png.png",
                  socialLinks:
                      "https://www.linkedin.com/in/muhammad-sharjeel-awan-59a255203/"),
              SocialIcons(
                  iconUrl:
                      "https://cdn-icons-png.freepik.com/256/11023/11023876.png",
                  socialLinks: "https://github.com/sharjeel1856"),
              SocialIcons(
                  iconUrl:
                      "https://cdn-icons-png.flaticon.com/128/732/732200.png",
                  socialLinks: "mailto: awansharjeel1122@gmil.com"),
              SocialIcons(
                  iconUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/768px-Instagram_icon.png",
                  socialLinks:
                      "https://www.instagram.com/sharjeel_sharry/?next=%2F&hl=en"),
            ],
          ),
        ));
  }
}

class SocialIcons extends StatelessWidget {
  final String iconUrl;
  final String socialLinks;
  const SocialIcons(
      {super.key, required this.iconUrl, required this.socialLinks});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(Uri.parse(socialLinks));
      },
      child: Image.network(
        iconUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
