import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomProfileScreenListview extends StatelessWidget {
  const CustomProfileScreenListview({super.key});

  @override
  Widget build(BuildContext context) {
    List profileOptions = [
      {
        'prefixIcon': const Icon(Iconsax.user),
        'title': 'Your Profile',
        'suffixIcon': const Icon(Iconsax.arrow_right_14)
      },
      {
        'prefixIcon': const Icon(Iconsax.card),
        'title': 'Payment Methods',
        'suffixIcon': const Icon(Iconsax.arrow_right_14)
      },
      {
        'prefixIcon': const Icon(Iconsax.category),
        'title': 'My Orders',
        'suffixIcon': const Icon(Iconsax.arrow_right_14)
      }
    ];
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: profileOptions[index]['prefixIcon'],
          title: Text(profileOptions[index]['title']),
          trailing: profileOptions[index]['suffixIcon'],
        );
      },
      itemCount: profileOptions.length,
    );
  }
}
