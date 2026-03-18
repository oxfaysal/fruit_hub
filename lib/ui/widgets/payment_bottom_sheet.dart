import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_elevated_button.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_outline_button.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_text_feild.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Handle bar
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Text("Card Holders Name", style: AppTextStyle.titleBlack20),

                const SizedBox(height: 16),

                CustomTextField(
                  controller: TextEditingController(),
                  label: "Name",
                  hint: "Adolphus Chris",
                ),

                const SizedBox(height: 20),

                Text("Card Number", style: AppTextStyle.titleBlack20),

                const SizedBox(height: 16),

                CustomTextField(
                  controller: TextEditingController(),
                  label: "Number",
                  hint: "1234 5678 9012 1314",
                  keyboardType: TextInputType.numberWithOptions(),
                ),

                const SizedBox(height: 20),

                Row(
                  spacing: 25,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date", style: AppTextStyle.titleBlack20),

                          const SizedBox(height: 16),

                          CustomTextField(
                            controller: TextEditingController(),
                            label: "Date",
                            hint: "10/30",
                            keyboardType: TextInputType.numberWithOptions(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CCV", style: AppTextStyle.titleBlack20),

                          const SizedBox(height: 16),

                          CustomTextField(
                            controller: TextEditingController(),
                            label: "CCV",
                            hint: "123",
                            keyboardType: TextInputType.numberWithOptions(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SizedBox(
                width: 180,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/confirm');
                  },
                  title: "Complete Order",
                  color: AppColor.whiteColor,
                  isPrimaryColor: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
