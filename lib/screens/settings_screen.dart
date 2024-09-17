import 'package:clothing_store_app/widgets/custom_profile_screen_listview_items.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List settingsList = [
      {
        'prefixIcon': const Icon(Iconsax.user),
        'title': 'Notification Settings',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/profile_details_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.password_check),
        'title': 'Password Manager',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/profile_details_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.profile_delete),
        'title': 'Delete Account',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '',
      },
    ];
    return Scaffold(
      appBar: const CustomScreenAppBar(
        title: "Settings",
        isLeading: true,
        isActionable: false,
      ),
      body: ListView.builder(
        itemCount: settingsList.length,
        itemBuilder: (context, index) {
          return CustomListviewItems(profileElement: settingsList[index]);
        },
      ),
    );
  }
}
