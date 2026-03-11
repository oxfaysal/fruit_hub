import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.color,
  });

  final VoidCallback onPressed;
  final String title;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(title, style: AppTextStyle.titleWhite16,),
      ),
    );
  }
}
