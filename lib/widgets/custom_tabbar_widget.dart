import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTabBarWidget extends StatelessWidget {
  const CustomTabBarWidget({
    super.key,
    required this.fliterList,
  });

  final List fliterList;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      indicatorColor: AppColors.secondaryColor,
      labelColor: AppColors.primaryColor,
      padding: EdgeInsets.zero,
      tabs: fliterList
          .asMap()
          .entries
          .map((entry) => Tab(child: Text(entry.value)))
          .toList(),
    );
  }
}
