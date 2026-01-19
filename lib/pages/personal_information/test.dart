// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DOBPicker extends StatefulWidget {
//   const DOBPicker({super.key});
//
//   @override
//   State<DOBPicker> createState() => _DOBPickerState();
// }
//
// class _DOBPickerState extends State<DOBPicker> {
//
//   int selectedMonthIndex = 0;
//   int selectedYear = DateTime.now().year;
//
//   final List<String> months = [
//     "Jan","Feb","Mar","Apr","May","Jun",
//     "Jul","Aug","Sep","Oct","Nov","Dec"
//   ];
//
//   final int startYear = 1950;
//   final int endYear = DateTime.now().year;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Select Date of Birth"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//           Text(
//             "Selected: ${months[selectedMonthIndex]} $selectedYear",
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.deepPurple,
//             ),
//           ),
//
//           SizedBox(height: 30),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               // Month Picker
//               Container(
//                 width: 120,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: CupertinoPicker(
//                   scrollController: FixedExtentScrollController(
//                     initialItem: selectedMonthIndex,
//                   ),
//                   itemExtent: 40,
//                   onSelectedItemChanged: (index) {
//                     setState(() {
//                       selectedMonthIndex = index;
//                     });
//                   },
//                   children: months.map((month) => Center(
//                     child: Text(
//                       month,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: months[selectedMonthIndex] == month
//                             ? FontWeight.bold
//                             : FontWeight.normal,
//                         color: months[selectedMonthIndex] == month
//                             ? Colors.deepPurple
//                             : Colors.black87,
//                       ),uuuuu
//                     ),
//                   )).toList(),
//                 ),
//               ),
//
//               SizedBox(width: 20),
//
//               // Year Picker
//               Container(
//                 width: 120,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: CupertinoPicker(
//                   scrollController: FixedExtentScrollController(
//                     initialItem: endYear - selectedYear,
//                   ),
//                   itemExtent: 40,
//                   onSelectedItemChanged: (index) {
//                     setState(() {
//                       selectedYear = endYear - index;
//                     });
//                   },
//                   children: List.generate(
//                     endYear - startYear + 1,
//                         (i) => Center(
//                       child: Text(
//                         "${endYear - i}",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: selectedYear == endYear - i
//                               ? FontWeight.bold
//                               : FontWeight.normal,
//                           color: selectedYear == endYear - i
//                               ? Colors.deepPurple
//                               : Colors.black87,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           SizedBox(height: 50),
//
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.deepPurple,
//               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//             onPressed: () {
//               print(
//                 "DOB: ${months[selectedMonthIndex]} $selectedYear",
//               );
//             },
//             child: Text(
//               "Confirm",
//               style: TextStyle(fontSize: 18, color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// //



