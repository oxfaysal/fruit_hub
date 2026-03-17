import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';

import '../../core/color/random_color.dart';
import '../../core/text_style/app_text_style.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    this.bgColors,
    required this.onTap,
  });

  final String title;
  final String image;
  final String price;
  final Color? bgColors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, top: 12, bottom: 12),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: bgColors ?? cardColors[Random().nextInt(cardColors.length)],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(22),
              blurRadius: 2,
              spreadRadius: 0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8), // ← শুধু icon এর জন্য
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite_border),
                  ),
                ),
                Image.asset(image, width: 100, height: 100),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: AppTextStyle.titleBlack16w500,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("₦ $price", style: AppTextStyle.titlePrimary14),
                    IconButton.filled(
                      constraints: const BoxConstraints(
                        minWidth: 30,
                        minHeight: 30,
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 20, color: AppColor.primaryColor,),
                      style: IconButton.styleFrom(
                        backgroundColor: AppColor.primaryColor.withAlpha(51),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
