import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/basket_card.dart';
import 'package:fruithub_ecommerce/ui/widgets/track_step_dot.dart';
import 'package:fruithub_ecommerce/ui/widgets/track_steps.dart';

import '../../core/color/app_color.dart';
import '../../core/json/recommended_combo.dart';
import '../widgets/address_bottom_sheet.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';

class DeliveryStatus extends StatefulWidget {
  const DeliveryStatus({super.key});

  @override
  State<DeliveryStatus> createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            CustomAppBar(title: "Delivery Status"),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: BoxDecoration(color: AppColor.whiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TrackSteps(
                    image: "assets/images/step_1.png",
                      iconBgColor: Color(0xFFFFF8E1),
                      title: "Order Taken",
                      isDone: true,
                    ),
                    TrackStepDot(),
                    TrackSteps(
                      image: "assets/images/step_2.png",
                      iconBgColor: Color(0xFFF5F5F5),
                      title: "Order Is Being Prepared",
                      isDone: true,
                    ),
                    TrackStepDot(),
                    TrackSteps(
                      image: "assets/images/step_3.png",
                      iconBgColor: Color(0xFFFFEBEE),
                      title: "Order Is Being Delivered",
                      subtitle: "Your delivery agent is coming",
                      isDone: false,
                      isActive: true,
                    ),
                    TrackStepDot(),
                    SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: Image.asset("assets/images/map.png", fit: BoxFit.cover,),
                    ),
                    TrackStepDot(),
                    TrackSteps(
                      image: "assets/images/step_4.png",
                      iconBgColor: Color(0xFFE8F5E9),
                      title: "Order Received",
                      isDone: false,
                      isLast: true,
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


