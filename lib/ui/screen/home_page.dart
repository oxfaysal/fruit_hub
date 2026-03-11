import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_text_feild.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu_open, size: 25,),
                Image.asset("assets/images/basket.png", width: 70, height: 70,)
              ],
            ),
            SizedBox(height: 22,),
            Text.rich(TextSpan(text: "Hello Tony, ", style: AppTextStyle.titleBlack20w400, children: [TextSpan(text: "What fruit salad combo do you want today?", style: AppTextStyle.titleBlack20)])),
            SizedBox(height: 22,),
            Row(
              spacing: 10,
              children: [
                Expanded(child: CustomTextField(controller: _searchController, label: "Search", hint: "Search for fruit salad combos", icon: Icons.search,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.tune))

              ],
            )

          ],
        ),
      )
    );
  }
}

