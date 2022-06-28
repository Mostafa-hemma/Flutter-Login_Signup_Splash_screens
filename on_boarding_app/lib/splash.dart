// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:on_boarding_app/Signup.dart';
import 'package:on_boarding_app/buttons.dart';
import 'package:on_boarding_app/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    @override
    void dispose() {
      controller.dispose();
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 50),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(270, 30, 0, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[400],
                            // ignore: unnecessary_new
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Colors.black),
                          ))),
                  Text(
                    "7Krave",
                    style: TextStyle(
                        color: Colors.teal, fontSize: 30, fontFamily: 'Hind'),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
                      child: Image.asset('images/123.png')),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    alignment: Alignment.center,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Get food delivery to your doorstep asap",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "we have young and professional delivery team that will bring your food as soon as possible to your doorstep",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              //fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "7Krave",
                    style: TextStyle(color: Colors.teal, fontSize: 30),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
                      child: Image.asset('images/234.png')),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    alignment: Alignment.center,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Buy Any Food from your favorite restaurant",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              //fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 105,
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: SlideEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 20.0,
                  dotHeight: 5.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.teal),
            ),
            button(
              width: 300,
              background: Colors.teal,
              raduis: 5.0,
              text: "Get Started",
              textcolor: Colors.white,
              navigate: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      //onPressed: () => controller.jumpToPage(2),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.teal),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
