import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightPickerInImperial extends StatefulWidget {
  const HeightPickerInImperial({super.key});

  @override
  State<HeightPickerInImperial> createState() => _HeightPickerInImperialState();
}

class _HeightPickerInImperialState extends State<HeightPickerInImperial> {
  int selectedHeightInFeet = 5;
  int startHeightInFeet = 2;
  int endHeightInFeet = 8;

  int startHeightInInch = 1;
  int endHeightInInch = 11;
  int selectedHeightInInch = 7;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          height: Responsive.hp(40),
          width: Responsive.wp(20),

          child: CupertinoPicker(
            itemExtent: 40,
            scrollController: FixedExtentScrollController(initialItem: selectedHeightInFeet - startHeightInFeet),
            onSelectedItemChanged: (index) {
              setState(() {
                selectedHeightInFeet = startHeightInFeet + index;
              });
            },
            children: List.generate(
              endHeightInFeet - startHeightInFeet + 1,
              (i) => Center(child: Text("${startHeightInFeet + i} ft", style: TextStyle(fontSize: Responsive.hp(2)),)),
            ),
          ),
        ),



        const SizedBox(width: 2),
        Container(
          color: Colors.white,
          height: Responsive.hp(40),
          width: Responsive.wp(20),
          child: CupertinoPicker(
            itemExtent: 40,
            scrollController: FixedExtentScrollController(initialItem: selectedHeightInInch - startHeightInInch),
            onSelectedItemChanged: (index) {
              setState(() {
                selectedHeightInInch = startHeightInInch + index;
              });
            },
            children: List.generate(
              endHeightInInch - startHeightInInch + 1,
              (i) => Center(child: Text("${startHeightInInch + i} in", style: TextStyle(fontSize: Responsive.hp(2)))),
            ),
          ),
        ),




      ],
    );
  }
}
