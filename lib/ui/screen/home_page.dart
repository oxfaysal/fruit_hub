import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:fruithub_ecommerce/core/json/recommended_combo.dart';
import 'package:fruithub_ecommerce/core/text_style/app_text_style.dart';
import 'package:fruithub_ecommerce/ui/widgets/custom_text_feild.dart';
import 'package:fruithub_ecommerce/ui/widgets/item_card.dart';

import '../../core/json/tab_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();

  final List<String> _tabs = ['Hottest', 'Popular', 'New combo', 'Top'];
  String _selectedTab = 'Hottest';

  List<Map<String, dynamic>> get _filteredItems =>
      tabAllItems.where((item) => item['category'] == _selectedTab).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu_open, size: 25),
                Image.asset("assets/images/basket.png", width: 70, height: 70),
              ],
            ),
            SizedBox(height: 22),
            Text.rich(
              TextSpan(
                text: "Hello Tony, ",
                style: AppTextStyle.titleBlack20w400,
                children: [
                  TextSpan(
                    text: "What fruit salad combo do you want today?",
                    style: AppTextStyle.titleBlack20,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _searchController,
                    label: "Search",
                    hint: "Search for fruit salad combos",
                    icon: Icons.search,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
              ],
            ),
            SizedBox(height: 32),

            Text("Recommended Combo", style: AppTextStyle.titleBlack24),

            SizedBox(
              height: 245,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: comboItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemCard(
                    title: comboItems[index]['title'],
                    image: comboItems[index]['image'],
                    price: comboItems[index]['price'],
                    bgColors: Color(0xFFFFFFFF),
                    onTap: () {
                      Navigator.pushNamed(context, '/product_details');
                    },
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _tabs.map((tab) => _buildTab(tab)).toList(),
                ),
              ),
            ),
            
            SizedBox(
              height: 245,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
                child: ListView.builder(
                  key: ValueKey(_selectedTab),
                  scrollDirection: Axis.horizontal,
                  itemCount: _filteredItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      title: _filteredItems[index]['title'],
                      image: _filteredItems[index]['image'],
                      price: _filteredItems[index]['price'],
                      onTap: () {
                        Navigator.pushNamed(context, '/product_details');
                      },
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String tab) {
    final bool isSelected = _selectedTab == tab;

    return GestureDetector(
      onTap: () => setState(() => _selectedTab = tab),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(right: 18, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tab,
              style: isSelected ? AppTextStyle.titleBlack24 : AppTextStyle.titleTab16w500
            ),
            if (isSelected)
              Container(
                margin: const EdgeInsets.only(top: 4),
                height: 2,
                width: 36,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
          ],
        ),
      ),
    );
  }



}
