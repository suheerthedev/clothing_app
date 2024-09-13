import 'package:flutter/material.dart';

class CustomListviewItems extends StatelessWidget {
  const CustomListviewItems({
    super.key,
    required this.profileElement,
  });
  final Map<String, dynamic> profileElement;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: profileElement['prefixIcon'],
      title: Text(profileElement['title']),
      trailing: profileElement['suffixIcon'],
      onTap: () {
        Navigator.pushNamed(context, profileElement['route']);
      },
    );
  }
}
