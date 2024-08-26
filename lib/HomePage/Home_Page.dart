import 'package:flutter/material.dart';
import 'package:web_app_pj/Components/Profile_&_Intro.dart';
import 'package:web_app_pj/Components/Recent_Projects.dart';
import 'package:web_app_pj/Components/SocialMedia.dart';
import 'package:web_app_pj/Components/aboutme.dart';
import 'package:web_app_pj/Components/contact_info.dart';
import 'package:web_app_pj/Components/footer.dart';
import 'package:web_app_pj/Components/topSkills.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

import '../Colors/colors.dart';
import '../Components/drawer.dart';
import '../Components/tobar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey =
      GlobalKey<ScaffoldState>(); // it helps in shackbar ,open/close drawer

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget._globalKey, // to handle drawer and the shackbar
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Muhammad Sharjeel",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: textColor),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      widget._globalKey.currentState!.openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 35,
                    ),
                  ),
                )
              : TopBar(
                  scrollController: widget._scrollController,
                ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(scrollController: widget._scrollController)
          : null,
      // this drawer will work when the project is in mobile mode
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: widget._scrollController,
              child: Column(
                children: [
                  const ProfAndIntro(),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                  const Aboutme(),
                  const SizedBox(
                    height: 55,
                  ),
                  const Topskills(),
                  const SizedBox(
                    height: 55,
                  ),
                  const RecentProjects(),
                  const SizedBox(
                    height: 55,
                  ),
                  const ContactInfo(),
                  const SizedBox(
                    height: 55,
                  ),
                  const Footer(),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Socialmedia(),
          ],
        ),
      ),
    );
  }
}
