import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(Responsive.hp(3)),
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

              SizedBox(height: Responsive.hp(2),),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Choose your Gender", style: TextStyle(fontWeight: FontWeight.bold, fontSize: Responsive.hp(4)),),
                  Text("This will be used to calibrate your custom \nplan.", style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

