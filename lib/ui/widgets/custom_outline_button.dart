import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

import '../../core/color/app_color.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(color: AppColor.primaryColor),
        ),
        child: Text(title, style: AppTextStyle.titlePrimary16),
      ),
    );
  }
}
