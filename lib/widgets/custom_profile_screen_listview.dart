import 'package:clothing_store_app/widgets/custom_profile_screen_listview_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomProfileScreenListview extends StatelessWidget {
  const CustomProfileScreenListview({super.key});

  @override
  Widget build(BuildContext context) {
    List profileList = [
      {
        'prefixIcon': const Icon(Iconsax.user),
        'title': 'Your Profile',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/profile_details_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.card),
        'title': 'Payment Methods',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/payment_method_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.clipboard_text),
        'title': 'My Orders',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/my_orders_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.setting_2),
        'title': 'Settings',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/settings_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.info_circle),
        'title': 'Help Center',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/help_center_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.lock),
        'title': 'Privacy Policy',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/privacy_policy_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.user_add),
        'title': 'Invite Friends',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/invite_friends_screen',
      },
      {
        'prefixIcon': const Icon(Iconsax.logout_1),
        'title': 'Log out',
        'suffixIcon': const Icon(Iconsax.arrow_right_3),
        'route': '/log_out_screen',
      }
    ];
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Hero(
          tag: 'profile_item_$index',
          child: CustomListviewItems(profileElement: profileList[index]),
        );
      },
      itemCount: profileList.length,
    );
  }
}
