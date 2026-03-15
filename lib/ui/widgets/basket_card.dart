import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';

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
        title: Text(title),
        subtitle: Text("2 packs"),
        leading: Image.asset(image),
        trailing: Text("₦ $price"),
      ),
    );
  }
}
