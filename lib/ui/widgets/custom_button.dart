import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

import '../../core/color/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});


  final String title;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          backgroundColor: AppColor.primaryColor,
          foregroundColor: AppColor.whiteColor,
        ),
        onPressed: onPressed,
        child: Text(title, style: AppTextStyle.titleWhite16,),
      ),
    );
  }
}
