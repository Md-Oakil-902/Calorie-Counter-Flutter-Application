import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightPickerInMetric extends StatefulWidget {
  const WeightPickerInMetric({super.key});

  @override
  State<WeightPickerInMetric> createState() => _WeightListState();
}

class _WeightListState extends State<WeightPickerInMetric> {
  int selectedWeight =55;
  int startWeight = 25;
  int endWeight = 300;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: Responsive.hp(40),
      width: Responsive.wp(30),
      child: CupertinoPicker(
        itemExtent: 40,
        scrollController: FixedExtentScrollController(
          initialItem: selectedWeight - startWeight,
        ),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedWeight = startWeight + index;
          });
        },
        children: List.generate(
          endWeight - startWeight + 1,
          (i) => Center(child: Text("${startWeight + i} kgs", style: TextStyle(fontSize: Responsive.hp(2)))),
        ),
      ),
    );
  }
}
