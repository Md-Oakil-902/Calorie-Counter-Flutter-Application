//
//
// import "package:flutter/material.dart";
// import "package:lottie/lottie.dart";
//
// import "../utils//responsive.dart";
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // Initialize responsive values
//     Responsive.init(context);
//
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: Responsive.wp(5),
//           ),
//           child: Column(
//             children: [
//
//               /// Language Button (Top Right)
//               Align(
//                 alignment: Alignment.topRight,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: Responsive.wp(3),
//                       vertical: Responsive.hp(1),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Image.asset(
//                         "lib/images/british.png",
//                         height: Responsive.hp(2.5),
//                         width: Responsive.hp(2.5),
//                       ),
//                       SizedBox(width: Responsive.wp(1)),
//                       Text(
//                         "EN",
//                         style: TextStyle(
//                           fontSize: Responsive.sp(14),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               /// Lottie Animation (60% height)
//               SizedBox(
//                 height: Responsive.hp(60),
//                 child: Lottie.asset(
//                   "lib/images/splash.json",
//                   fit: BoxFit.contain,
//                 ),
//               ),
//
//               /// Title Text
//               Column(
//                 children: [
//                   Text(
//                     "Calorie Counter",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: Responsive.sp(30),
//                     ),
//                   ),
//                   Text(
//                     "Made Easy",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: Responsive.sp(30),
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: Responsive.hp(3)),
//
//               /// Get Started Button (50% width)
//               SizedBox(
//                 width: Responsive.wp(50),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(
//                       vertical: Responsive.hp(1.8),
//                     ),
//                     backgroundColor: Colors.black,
//                   ),
//                   child: Text(
//                     "Get Started",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: Responsive.sp(16),
//                     ),
//                   ),
//                 ),
//               ),
//
//               SizedBox(height: Responsive.hp(1.5)),
//
//               /// Sign In Text
//               TextButton(
//                 onPressed: () {},
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Already have an account? ",
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: Responsive.sp(14),
//                       ),
//                     ),
//                     Text(
//                       "Sign in",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: Responsive.sp(14),
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }