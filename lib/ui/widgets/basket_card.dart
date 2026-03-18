import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';

import '../../core/color/random_color.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });


  final String title;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColor.subTextColor.withAlpha(20)),
      ),
      padding: EdgeInsets.all(12),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(title, style: AppTextStyle.titleBlack16w500,),
        subtitle: Text("2 packs", style: AppTextStyle.titleSubBlack14,),
        leading: Container(
          width: 60,
          decoration: BoxDecoration(
            color: cardColors[Random().nextInt(cardColors.length)],
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(image), scale: 12),
            border: Border.all(color: AppColor.subTextColor.withAlpha(12))
          ),
        ),
        trailing: Text("₦ $price", style: AppTextStyle.titleBlack16,),
      ),
    );
  }
}
