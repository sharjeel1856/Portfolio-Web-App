// This class determine the size of web or app and adapt according to it
import 'package:flutter/cupertino.dart';

class Responsive {
  //this methord checks if the screen width is less than or equal to 600 pixels
  // it its true it indicates this the size of mobile app
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  // this methord takes the full width of screen such as web
  static double widthOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //It adopt screen height according to the platform
  static double heightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
