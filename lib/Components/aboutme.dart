import 'package:flutter/cupertino.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 40 : 80,
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "About Me",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFB773C)),
            ),
          ),
          Text(
            "Hi, I'm a Flutter Developer passionate about creating beautiful, user-centric applications that meet the unique needs of users. With expertise in Flutter, I specialize in developing both mobile apps and web applications that are as functional as they are visually appealing. My experience extends to front-end web development using HTML, CSS, and JavaScript, as well as database management with SQL Server Management Studio. I also bring a diverse skill set in marketing, having served as a merchandiser with Reckitt Benckiser, where I honed my ability to align product strategies with market needs.\n \n I am driven by a passion for problem-solving and a relentless pursuit of learning new technologies. My goal is always to develop projects that not only meet user requirements but also push the boundaries of what technology can achieve. My portfolio includes key projects such as an e-commerce app and a responsive website, which showcase my commitment to delivering high-quality solutions. As I continue my journey in software engineering, currently pursuing my Bachelor's degree in my final year, I am eager to take on more challenging projects and contribute to the open-source community. \n \n My work philosophy revolves around a commitment to excellence, teamwork, and staying at the forefront of industry trends. I believe in leveraging technology for social impact and continuously adapting to the ever-evolving tech landscape. Whether it's mastering the latest frameworks or solving complex problems, I am passionate about learning and growing as a developer, always with the goal of making a positive difference through technology.",
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 18 : 20,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
