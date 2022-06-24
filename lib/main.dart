// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Upper Splash Section
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(
                        vertical: 50,
                      ),
                      child:

                          /// Logo
                          Image.asset(
                        "assets/images/CozyLogo.png",
                        cacheHeight: 60,
                        cacheWidth: 60,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child:

                          /// Splash Title
                          Text(
                        "Find Cozy House \nto Stay and Happy",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: "assets/Fonts/Poppins-Medium.ttf",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child:

                          /// Splash Quotes
                          Text(
                        "Stop membuang banyak waktu \npada tempat yang tidak habitable",
                        style: TextStyle(
                          color: Color.fromARGB(130, 83, 83, 83),
                          fontSize: 16,
                          fontFamily: "assets/Fonts/Poppins-Medium.ttf",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:

                          /// Navigation or Start button
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(186, 128, 0, 157),
                          padding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 40,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Explore Now",
                          style: TextStyle(
                            fontFamily: "assets/Fonts/Poppins-Medium.ttf",
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Down Splash Section
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                color: Color.fromARGB(255, 251, 118, 16),
                child: Image.asset(
                  "assets/images/house.png",
                  cacheHeight: 700,
                  cacheWidth: 700,
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
