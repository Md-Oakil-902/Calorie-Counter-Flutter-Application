import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../../utils/responsive.dart";

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({super.key});

  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  int selectedMonth = 0;
  int selectedYear = 2002;

  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  int initialYear = 2000;

  final int startYear = 1900;
  final int endYear = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Responsive.hp(2)),
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
                      "When were you born?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.hp(4),
                      ),
                    ),
                    Text(
                      "This will be taken into account when\ncalculating your daily nutrition goals",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: Responsive.hp(30),
                        width: Responsive.wp(40),
                        color: Colors.white,
                        child: CupertinoPicker(
                          itemExtent: 40,
                          scrollController: FixedExtentScrollController(
                            initialItem: selectedMonth,
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedMonth = index;
                            });
                          },

                          children: months
                              .map(
                                (month) => Center(
                                  child: Text(
                                    month,
                                    style: TextStyle(
                                      fontWeight: months[selectedMonth] == month
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: months[selectedMonth] == month
                                          ? Colors.black
                                          : Colors.black38,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(width: 20),

                      Container(
                        height: Responsive.hp(50),
                        width: Responsive.wp(40),
                        color: Colors.white,
                        child: CupertinoPicker(
                          itemExtent: 40,
                          scrollController: FixedExtentScrollController(
                            initialItem:
                                endYear - selectedYear, // scroll to 2000
                          ),
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedYear =
                                  endYear -
                                  index; // update selectedYear when user scrolls
                            });
                          },
                          children: List.generate(
                            endYear - startYear + 1,
                            (i) => Center(
                              child: Text(
                                "${endYear - i}",
                                style: TextStyle(
                                  fontWeight: selectedYear == (endYear - i)
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: selectedYear == (endYear - i)
                                      ? Colors.black
                                      : Colors.black38,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                height: Responsive.hp(6),

                color: Colors.white,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: Responsive.hp(2)),
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
