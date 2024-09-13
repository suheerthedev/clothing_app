import 'package:flutter/material.dart';

class CustomProfileScreenListviewItems extends StatelessWidget {
  const CustomProfileScreenListviewItems({
    super.key,
    required this.profileElement,
  });
  final Map<String, dynamic> profileElement;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: profileElement['heroTag'],
      child: ListTile(
        leading: profileElement['prefixIcon'],
        title: Text(profileElement['title']),
        trailing: profileElement['suffixIcon'],
        onTap: () {
          Navigator.pushNamed(context, profileElement['route']);
        },
      ),
    );
  }
}
