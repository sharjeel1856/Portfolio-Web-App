import 'package:flutter/material.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

import '../Colors/colors.dart';

class TopBar extends StatefulWidget {
  final ScrollController scrollController;
  const TopBar({super.key, required this.scrollController});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children:
                topBarData(widget.scrollController, context, isMobile: true),
          )
        : Row(
            children: topBarData(widget.scrollController, context),
          );
  }

  List<Widget> topBarData(
      ScrollController scrollController, BuildContext context,
      {bool isMobile = false}) {
    int scrollDuration = isMobile ? 800 : 500;
    // the main work we have to do is when we click on any item in topbar
    // we have perform this operation later
    return [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: isMobile
                ? 20
                : 0), // aghar ismobile true hai tu vertical padding 20 otherwise its 0.
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(200,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
            // yeh onclick kee functionality aye gaye jo hum javacsript mein kerte the
            // aghar yeh project mobile pa hai tu direct ap ko uss section pa la jaye ga jiss pa ap click keren ga
            //Aghar app web pa han tu click kerne sa app 200 or jo pa pixels of screen do
            //yeh ap ko uss section pa la jaye ga with mention time such as miliseconds etc
            //' curve: Curves.bounceIn ' yeh ake animation effect hi jo FLutter mein builtin hai use huta hai scrolling ka time
            //This (Functionality is same for other skills , Projects , Contact sections) just pixels changes .
          },
          child: const Text(
            'About',
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: isMobile
                ? 20
                : 0), // aghar ismobile true hai tu vertical padding 20 otherwise its 0.
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(isMobile ? 850 : 1100,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: const Text(
            'Skills',
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: isMobile
                ? 20
                : 0), // aghar ismobile true hai tu vertical padding 20 otherwise its 0.
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(isMobile ? 1700 : 1750,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: const Text(
            'Projects',
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: isMobile
                ? 20
                : 0), // aghar ismobile true hai tu vertical padding 20 otherwise its 0.
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(isMobile ? 4000 : 2750,
                duration: Duration(milliseconds: scrollDuration),
                curve: Curves.bounceIn);
          },
          child: const Text(
            'Contact',
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    ];
  }
}
