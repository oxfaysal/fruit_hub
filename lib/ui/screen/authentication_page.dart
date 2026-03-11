import 'package:flutter/material.dart';

import '../../core/color/app_color.dart';
import '../../core/text_style/app_text_style.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_feild.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({super.key});

  final _authController = TextEditingController();

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
              decoration: BoxDecoration(color: AppColor.primaryColor),
              child: Image.asset("assets/images/authentication_image.png"),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What is your firstname?",
                    textAlign: TextAlign.start,
                    style: AppTextStyle.titleBlack20,
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    controller: _authController,
                    label: 'Name',
                    hint: "Tony",
                  ),
                  SizedBox(height: 60),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    title: "Start Ordering",
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
