import 'package:calorie_counter/pages/personal_information/date_of_birth.dart';
import 'package:calorie_counter/pages/personal_information/height_weight.dart';
import 'package:calorie_counter/utils/option_selector.dart';
import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Choose your Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.hp(4.3),
                      ),
                    ),
                    Text(
                      "This will be used to calibrate your custom \nplan.",
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
                      OptionSelector(
                        image: null,
                        text: "Male",
                        isSelected: selectedGender == "Male",
                        onTap: () {
                          setState(() {
                            selectedGender = "Male";
                          });
                        },
                      ),
                      SizedBox(height: Responsive.hp(2)),
                      OptionSelector(
                        image: null,
                        text: "Female",
                        isSelected: selectedGender == "Female",
                        onTap: () {
                          setState(() {
                            selectedGender = "Female";
                          });
                        },
                      ),
                      SizedBox(height: Responsive.hp(2)),

                      OptionSelector(
                        image: null,
                        text: "Other",
                        isSelected: selectedGender == "Other",
                        onTap: () {
                          setState(() {
                            selectedGender = "Other";
                          });
                        },
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
                  onPressed: selectedGender == null ? null : () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DateOfBirth()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedGender != null
                        ? Colors.black
                        : Colors.grey,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: selectedGender == null
                          ? Colors.black
                          : Colors.white,
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
