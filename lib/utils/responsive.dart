
// import 'package:flutter/material.dart';
//
// class Responsive {
//   static late double width;
//   static late double height;
//   static late Orientation orientation;
//   static late bool isMobile;
//   static late bool isTablet;
//
//   /// Call this at the top of build()
//   static void init(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//
//     orientation = mediaQuery.orientation;
//     width = mediaQuery.size.width;
//     height = mediaQuery.size.height;
//
//     // Auto-handle landscape
//     if (orientation == Orientation.landscape) {
//       final temp = width;
//       width = height;
//       height = temp;
//     }
//
//     // Breakpoints
//     isMobile = width < 600;
//     isTablet = width >= 600;
//   }
//
//   /// Width in percentage (e.g. wp(50) = 50%)
//   static double wp(double percent) {
//     return width * (percent / 100);
//   }
//
//   /// Height in percentage (e.g. hp(60) = 60%)
//   static double hp(double percent) {
//     return height * (percent / 100);
//   }
//
//   /// Responsive font size
//   static double sp(double size) {
//     return isTablet ? size * 1.2 : size;
//   }
// }

import "package:flutter/material.dart";

class Responsive{

  static late double height ;
  static late double width;


  static void init(BuildContext context){
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

  }


  static double wp(double percent) => width * (percent/100);
  static double hp(double percent) => height * (percent/100);


}