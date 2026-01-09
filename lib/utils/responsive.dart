
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