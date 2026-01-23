import "package:calorie_counter/utils/heightPickerMetricUnit.dart";
import "package:calorie_counter/utils/weightPickerInImperialUnit.dart";
import "package:calorie_counter/utils/weightPickerInMetric.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../../utils/heightPickerInImperial.dart";
import "../../utils/responsive.dart";

class HeightWeight extends StatefulWidget {
  const HeightWeight({super.key});

  @override
  State<HeightWeight> createState() => _HeightWeightState();
}

class _HeightWeightState extends State<HeightWeight> {
  bool isMetric = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Responsive.hp(3)),
          child: Column(
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
                      "Height and Weight",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.hp(4),
                      ),
                    ),
                    Text(
                      "This will be taken into account when\ncalculating your daily nutrition goals",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: Responsive.hp(1.7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Responsive.hp(5)),
// container
              SizedBox(
                height: Responsive.hp(7),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text(
                          "Imperial",
                          style: TextStyle(
                            fontSize: Responsive.hp(3),
                            fontWeight: FontWeight.bold,
                            color: !isMetric ? Colors.black : Colors.grey,
                          ),
                        ),
                        Transform.scale(
                          scale: 1.2,
                          child: CupertinoSwitch(
                            activeTrackColor: Colors.black,
                            value: isMetric,
                            onChanged: (value) {
                              setState(() {
                                isMetric = value;
                              });
                            },
                          ),
                        ),
                        Text(
                          "Metric",
                          style: TextStyle(
                            fontSize: Responsive.hp(3),
                            fontWeight: FontWeight.bold,
                            color: isMetric ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      fontSize: Responsive.hp(2.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Weight",
                    style: TextStyle(
                      fontSize: Responsive.hp(2.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!isMetric) ...[
                    HeightPickerInImperial(),
                    WeightPickerInImperialUnit(),
                  ] else ...[
                    HeightPickerMetricUnit(),
                    WeightPickerInMetric(),
                  ],

                ],
              ),

              Spacer(),

              Container(
                width: double.infinity,
                height: Responsive.hp(7),

                color: Colors.white12,
                child: ElevatedButton(
                  onPressed: (){}
                  ,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white
                          , fontWeight: FontWeight.bold, fontSize: Responsive.hp(1.8)
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
