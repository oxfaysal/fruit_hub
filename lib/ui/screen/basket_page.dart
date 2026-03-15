import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/basket_card.dart';

import '../../core/color/app_color.dart';
import '../../core/json/recommended_combo.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            CustomAppBar(title: "My Basket"),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(color: AppColor.whiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 15),
                        itemCount: comboItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: BasketCard(
                              title: comboItems[index]['title'],
                              image: comboItems[index]['image'],
                              price: comboItems[index]['price'],
                            ),
                          );
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5,
                              children: [
                                Text("Total", style: AppTextStyle.titleBlack16),
                                Text(
                                  "₦ 24,000",
                                  style: AppTextStyle.titleBlack24,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: CustomButton(
                              title: "Checkout",
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
