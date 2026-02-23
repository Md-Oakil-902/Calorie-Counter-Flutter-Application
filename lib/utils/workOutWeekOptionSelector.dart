import 'dart:ui';
import 'package:calorie_counter/utils/responsive.dart';
import "package:flutter/material.dart";

class WorkoutWeekOptionSelector extends StatelessWidget {
  final String image;
  final String workoutDay;
  final String text;
  final VoidCallback onTap;

  const WorkoutWeekOptionSelector({
    super.key,
    required this.image,
    required this.workoutDay,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Responsive.hp(11),

      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor:  Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 30, height: 30, child: Image.asset(image)),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(workoutDay, style: TextStyle(fontWeight: FontWeight.bold, fontSize: Responsive.hp(3), color: Colors.black),),
                Text(text, style: TextStyle( fontSize: Responsive.hp(2), color: Colors.black12))],
            ),
          ],
        ),
      ),
    );
  }
}
