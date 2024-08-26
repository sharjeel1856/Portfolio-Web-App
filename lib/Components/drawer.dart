import 'package:flutter/material.dart';
import 'package:web_app_pj/Colors/colors.dart';
import 'package:web_app_pj/Components/tobar.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: textColor,
          ),
        ),
      ),
      body: Center(
        child: TopBar(
          scrollController: scrollController,
        ),
      ),
    );
  }
}
