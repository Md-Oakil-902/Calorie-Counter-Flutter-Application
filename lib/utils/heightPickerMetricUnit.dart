import 'package:calorie_counter/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HeightPickerMetricUnit extends StatefulWidget {
  const HeightPickerMetricUnit({super.key});

  @override
  State<HeightPickerMetricUnit> createState() => _HeightPickerMetricUnitState();
}

class _HeightPickerMetricUnitState extends State<HeightPickerMetricUnit> {


  int selectedHeight = 172;
  int startHeight = 60 ;
  int endHeight = 245 ;

  @override
  Widget build(BuildContext context) {
     return Container(
      color: Colors.white,
      height: Responsive.hp(40),
      width: Responsive.wp(30),
      child: CupertinoPicker(
        itemExtent: 40,
        scrollController: FixedExtentScrollController(
          initialItem: selectedHeight - startHeight,
        ),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedHeight = startHeight + index;
          });
        },
        children: List.generate(
          endHeight - startHeight + 1,
              (i) => Center(child: Text("${startHeight + i} cm", style: TextStyle(fontSize: Responsive.hp(2)))),
        ),
      ),
    );;
  }
}
