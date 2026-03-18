import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_outline_button.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_text_feild.dart';
import 'package:fruithub_ecommerce/ui/widgets/payment_bottom_sheet.dart';

class AddressBottomSheet extends StatelessWidget {
  const AddressBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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

          Text("Delivery Address", style: AppTextStyle.titleBlack20),

          const SizedBox(height: 16),

          CustomTextField(
            controller: TextEditingController(),
            label: "Address",
            hint: "10th avenue, Lekki, Lagos State",
          ),

          const SizedBox(height: 20),

          Text("Number we can call", style: AppTextStyle.titleBlack20),

          const SizedBox(height: 16),

          CustomTextField(
            controller: TextEditingController(),
            label: "Number",
            hint: "09676589799",
            keyboardType: TextInputType.numberWithOptions(),
          ),

          const SizedBox(height: 36),

          // Confirm button
          SizedBox(
            width: double.infinity,
            height: 52,
            child: Row(
              spacing: 25,
              children: [
                Expanded(
                  child: CustomOutlineButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/confirm');
                    },
                    title: "Pay on delivery",
                  ),
                ),
                Expanded(
                  child: CustomOutlineButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        builder: (context) => const PaymentBottomSheet(),
                      );
                    },
                    title: "Pay with card",
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
        ],
      ),
    );
  }
}
