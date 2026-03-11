import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/welcome_screen');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png"),
                SizedBox(height: 12,),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(25))
                    ),child: Text("Fruit Hub", style: AppTextStyle.titleWhite24)),
              ],
            ),
        ),
      ),
    );
  }
}
