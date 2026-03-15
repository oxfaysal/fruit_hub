import 'package:flutter/material.dart';

import '../../core/color/app_color.dart';
import '../../core/text_style/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Row(
          spacing: 20,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: AppColor.whiteColor,
              ),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded, size: 16),
                  Text("Go back", style: AppTextStyle.titleBlack16),
                ],
              ),
            ),
            if (title != null) Text(title!, style: AppTextStyle.titleWhite24w500),
          ],
        ),
      ),
    );
  }
}
