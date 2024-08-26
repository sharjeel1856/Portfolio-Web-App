import 'package:flutter/material.dart';
import 'package:web_app_pj/Colors/colors.dart';
import 'package:web_app_pj/Responsive/responsive.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        "Get In Touch With US",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: Color(0xFFFB773C),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: Responsive.isMobile(context)
            ? Responsive.widthOfScreen(context) * 0.9
            : Responsive.widthOfScreen(context) * 0.7,
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: shadColor,
                blurRadius: 4,
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                contactFromFeild("Name:", 1, "Your Name"),
                contactFromFeild("Email:", 1, "Your Email"),
                contactFromFeild("Phone Number:", 1, "Your Phone Number"),
                contactFromFeild("Message:", 10, "Your Message"),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFFB773C),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }

  contactFromFeild(name, maxline, hintText) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              maxLines: maxline,
              decoration: InputDecoration(
                  hintText: hintText,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFFB773C),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
