import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

class TrackSteps extends StatelessWidget {
  const TrackSteps({
    super.key,
    required this.image,
    required this.iconBgColor,
    required this.title,
    this.subtitle,
    this.isDone,
    this.isActive,
    this.isLast,
  });

  final String image;
  final Color iconBgColor;
  final String title;
  final String? subtitle;
  final bool? isDone;
  final bool? isActive;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Icon
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: iconBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(image),
        ),
        SizedBox(width: 16),

        // Title & Subtitle
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.titleBlack16w500,
              ),
              if (subtitle != null)
                Text(
                  "$subtitle",
                  style: AppTextStyle.titleSubBlack14,
                ),
            ],
          ),
        ),

        // Right indicator
        if (isDone == true)
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 14,
            child: Icon(Icons.check, color: Colors.white, size: 16),
          )
        else if (isActive == true)
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 14,
            child: Icon(Icons.phone, color: Colors.white, size: 16),
          )
        else if (isLast == true)
          Row(
            children: List.generate(
              3,
              (i) => Container(
                margin: EdgeInsets.only(left: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(i == 0 ? 1 : 0.6,),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
      ],
    );
  }
}



