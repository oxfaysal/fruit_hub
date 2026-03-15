import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            CustomAppBar(),

            Image.asset("assets/images/fruit_salad.png", height: 180),

            SizedBox(height: 20),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "Quinoa Fruit Salad",
                      style: AppTextStyle.titleBlack32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton.outlined(
                              constraints: const BoxConstraints(
                                minWidth: 30,
                                minHeight: 30,
                              ),
                              onPressed: () {
                                quantity--;
                                if (quantity < 1) {
                                  quantity = 1;
                                }
                                setState(() {});
                              },
                              icon: Icon(Icons.remove, size: 20),
                              style: IconButton.styleFrom(
                                shape: const CircleBorder(),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(quantity.toString(), style: AppTextStyle.titleBlack24),
                            SizedBox(width: 10),
                            IconButton.filled(
                              constraints: const BoxConstraints(
                                minWidth: 30,
                                minHeight: 30,
                              ),
                              onPressed: () {
                                quantity++;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: AppColor.primaryColor,
                              ),
                              style: IconButton.styleFrom(
                                backgroundColor: AppColor.primaryColor
                                    .withAlpha(51),
                                shape: const CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                        Text("₦ 10,000", style: AppTextStyle.titleBlack24),
                      ],
                    ),
                    Divider(thickness: 0.5, height: 32),
                    Text(
                      "One Pack Contains:",
                      style: AppTextStyle.titleBlack20,
                    ),
                    Container(
                      height: 2,
                      width: 180,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Text(
                      "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                      style: AppTextStyle.titleBlack16w500,
                    ),
                    Divider(thickness: 0.5, height: 32),

                    Text(
                      "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                      style: AppTextStyle.titleBlack14,
                    ),

                    SizedBox(height: 30),
                    Row(
                      spacing: 30,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: IconButton.filled(
                            constraints: const BoxConstraints(
                              minWidth: 50,
                              minHeight: 50,
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              size: 28,
                              color: AppColor.primaryColor,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: AppColor.primaryColor.withAlpha(
                                51,
                              ),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: CustomButton(title: "Add to basket", onPressed: () {
                            Navigator.pushNamed(context, '/basket');
                          },),
                        ),
                      ],
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
