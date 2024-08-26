import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

class ProfAndIntro extends StatefulWidget {
  const ProfAndIntro({super.key});

  @override
  State<ProfAndIntro> createState() => _ProfAndIntroState();
}

class _ProfAndIntroState extends State<ProfAndIntro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Responsive.isMobile(context)
                  // it take over screen with full width in mobile & half width in web
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  // it take over screen with full width in mobile & half width in web
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Lottie.asset("assets/animations/IntoAni.json"),
            ),
            //responsivensss ka leya yeh sizebox ko la kar logic implemention aur
            //responsiveness of mobile and desktop is importnat kuch as -70 ,/2 etc
            SizedBox(
              width: Responsive.isMobile(context)
                  // it take over screen with full width in mobile & half width in web
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  // it take over screen with full width in mobile & half width in web
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: SizedBox(
                  height: 240,
                  width: Responsive.isMobile(context)
                      ? Responsive.widthOfScreen(context) * 0.85
                      : 450,
                  child: Flexible(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.orange,
                              blurRadius: 8,
                              spreadRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText(
                                  "Hello!",
                                  textStyle: const TextStyle(
                                    fontSize: 40, // Set the font size
                                    color:
                                        Color(0xFFFB773C), // Set the text color
                                    fontWeight:
                                        FontWeight.w800, // Set the font weight
                                  ),
                                ),
                              ],
                              isRepeatingAnimation: true,
                            ),
                            const Text(
                              "I'm Sharjeel, a Software Engineer focusing on Flutter development, with additional skills.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
