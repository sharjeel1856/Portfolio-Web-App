import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

import '../Model/ProjectModel.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "My Current Projects",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFB773C)),
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          children: [
            // Calling project card and project from model class to show on the projects section
            ProjectCard(
                projectModel: projects[0],
                url: "https://github.com/sharjeel1856/Your-Friend-App"),
            ProjectCard(
                projectModel: projects[1],
                url: "https://github.com/sharjeel1856/Libass-Bazaar-"),
            ProjectCard(
                projectModel: projects[2],
                url: "https://github.com/sharjeel1856/Habit_tracker_App"),
            ProjectCard(
                projectModel: projects[3],
                url: "https://github.com/sharjeel1856/CHATGPT_INTEGRATION"),
            ProjectCard(projectModel: projects[4], url: " "),
            ProjectCard(
                projectModel: projects[5],
                url:
                    "https://github.com/sharjeel1856/My-Practice-Projects/tree/main/sqflite_2"),
          ],
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  final String url;
  const ProjectCard({super.key, required this.projectModel, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 4,
              spreadRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) / 4,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(projectModel.imgURL),
              ),
              Text(
                projectModel.projectName,
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    projectModel.description!,
                    maxLines: 5,
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 6,
                ),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.grey[200])),
                  onPressed: () {
                    // here we use the dependency of launch url Concept
                    launchUrl(
                      Uri.parse(url),
                    );
                  },
                  child: const Text(
                    "Dive In",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
