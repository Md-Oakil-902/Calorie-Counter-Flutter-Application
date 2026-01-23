import "package:calorie_counter/utils/responsive.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";


class WeightPickerInImperialUnit extends StatefulWidget {


  const WeightPickerInImperialUnit({super.key});

  @override
  State<WeightPickerInImperialUnit> createState() => _WeightPickerInImperialUnitState();
}

class _WeightPickerInImperialUnitState extends State<WeightPickerInImperialUnit> {

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
              (i) => Center(child: Text("${startWeight + i} lbs", style: TextStyle(fontSize: Responsive.hp(2)))),
        ),
      ),
    );
  }
}
