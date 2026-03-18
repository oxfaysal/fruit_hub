import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';

class TrackStepDot extends StatelessWidget {
  const TrackStepDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: List.generate(
          6,
              (i) => Container(
            width: 2,
            height: 4,
            margin: EdgeInsets.symmetric(vertical: 1),
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
