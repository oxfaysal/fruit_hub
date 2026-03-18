import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_elevated_button.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_outline_button.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green.withAlpha(40),
                border: Border.all(color: Colors.green.withAlpha(140)),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Congratulations!!!", style: AppTextStyle.titleBlack32),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Your order have been taken and is being attended to",
              style: AppTextStyle.titleBlack14,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 140,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/delivery_status');
              },
              title: "Track order",
              color: AppColor.primaryColor,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 190,
            child: CustomOutlineButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              title: "Continue Shopping",
            ),
          ),
        ],
      ),
    );
  }
}
