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
        tabs: [
          Tab(
            child: Text(fliterList[0]),
          ),
          Tab(
            child: Text(fliterList[1]),
          ),
          Tab(
            child: Text(fliterList[2]),
          ),
          Tab(
            child: Text(fliterList[3]),
          ),
          Tab(
            child: Text(fliterList[4]),
          ),
          Tab(
            child: Text(fliterList[5]),
          ),
        ]);
  }
}
