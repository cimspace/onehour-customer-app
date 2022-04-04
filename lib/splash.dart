import 'dart:async';
import 'dart:ui';

import 'package:customer_app/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (builder)=>Home())));
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xffcdcbcb), Color(0xffcdcbcb),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children : [
            Column(
              children: [
                Image.asset('assets/images/onehour.jpg',
                  height: 150.0,
                  width: 150.0,
                ),
                Text('Finger tip delivary',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),

                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
