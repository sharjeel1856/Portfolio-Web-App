import 'package:flutter/material.dart';
import 'package:web_app_pj/Colors/colors.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

class Topskills extends StatelessWidget {
  const Topskills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "My Top Skills",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFB773C)),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.widthOfScreen(context) / 4,
          ),
          child: const Wrap(
            children: [
              SkillCard(
                  url:
                      "https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png"),
              SkillCard(
                  url:
                      "https://avatars.githubusercontent.com/u/1609975?s=280&v=4"),
              SkillCard(
                  url:
                      "https://miro.medium.com/v2/resize:fit:300/1*R4c8lHBHuH5qyqOtZb3h-w.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/512/1493/1493169.png"),
              SkillCard(
                  url:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Figma-logo.svg/1667px-Figma-logo.svg.png"),
              SkillCard(
                  url:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/180px-GitHub_Invertocat_Logo.svg.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/128/5968/5968267.png"),
              SkillCard(
                  url: "https://cdn-icons-png.flaticon.com/128/919/919826.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/128/5968/5968292.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/128/6132/6132222.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/128/9544/9544010.png"),
              SkillCard(
                  url:
                      "https://cdn-icons-png.flaticon.com/128/6132/6132221.png"),
            ],
          ),
        )
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: shadColor, blurRadius: 6, spreadRadius: 4),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: SizedBox(
          height: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          width: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(30),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
