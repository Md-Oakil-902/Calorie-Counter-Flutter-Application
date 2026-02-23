import "package:calorie_counter/utils/workOutWeekOptionSelector.dart";
import "package:flutter/material.dart";

import "../../utils/responsive.dart";

class WorkOutPerWeek extends StatefulWidget {
  const WorkOutPerWeek({super.key});

  @override
  State<WorkOutPerWeek> createState() => _WorkOutPerWeekState();
}

class _WorkOutPerWeekState extends State<WorkOutPerWeek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Responsive.hp(3)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(Responsive.hp(1)),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Responsive.hp(2)),

              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How many workouts\ndo you do per week?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.hp(4),
                      ),
                    ),
                    Text(
                      "This will be used to calibrate your custom\nplan.",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: Responsive.hp(1.9),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    mainAxisAlignment: MainAxisAlignment.center,

                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WorkoutWeekOptionSelector(
                        image: "lib/images/onedot.png",
                        workoutDay: "0-2",
                        text: "Workout now and then", onTap: () {},
                      ),

                      SizedBox(height: Responsive.hp(3),),

                      WorkoutWeekOptionSelector(
                        image: "lib/images/threedot.png",
                        workoutDay: "3-5",
                        text: "A few workouts per week", onTap: () {  },
                      ),
                      SizedBox(height: Responsive.hp(3),),

                      WorkoutWeekOptionSelector(
                        image: "lib/images/sixdot.png",
                        workoutDay: "6+",
                        text: "Dedicated athlete", onTap: () {  },
                      ),
                    ],
                  ),
                ),
              ),



              //  Spacer(),
              Container(
                width: double.infinity,
                height: Responsive.hp(7),

                color: Colors.white12,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.hp(1.8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
