import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:lottie/lottie.dart";
import "../utils//responsive.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
    ));

  }

  @override
  Widget build(BuildContext context) {

    Responsive.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: Responsive.wp(5)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      //image
                      Image.asset(
                        "lib/images/british.png",
                        height: Responsive.hp(3),
                        width: Responsive.wp(3),
                      ),
                       SizedBox(width: Responsive.wp(1)), //language name
                      Text("EN"),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: Responsive.hp(60),
              color: Colors.white,

              child: Lottie.asset(
                "lib/images/splash.json",
                fit: BoxFit.contain,
              ),
            ),

            Column(
              children: [
                Text(
                  "Calorie Tracking",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: Responsive.hp(4)),
                ),
                Text(
                  "Made Easy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: Responsive.hp(4)),
                ),
              ],
            ),

             SizedBox(height: Responsive.hp(1)),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:  EdgeInsets.symmetric(horizontal: Responsive.wp(30), vertical: Responsive.hp(1.5)),
                backgroundColor: Colors.black,
              ),
              child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: Responsive.hp(2))),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Sign in", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}











