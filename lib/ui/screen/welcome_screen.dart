import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_elevated_button.dart';

import '../../core/text_style/app_text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: AppColor.primaryColor, ),
              child: Image.asset("assets/images/welcome_image.png"),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.titleBlack20,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    style: AppTextStyle.titleBlack16,
                  ),
                  SizedBox(height: 60),
                  CustomElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/auth_screen');
                  }, title: "Let’s Continue", color: AppColor.primaryColor)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
