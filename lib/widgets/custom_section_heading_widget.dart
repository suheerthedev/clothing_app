import 'package:flutter/material.dart';

class CustomSectionHeadingWidget extends StatelessWidget {
  const CustomSectionHeadingWidget({
    super.key,
    required this.textColor,
    required this.showActionButton,
    required this.title,
    required this.buttonTitle,
    required this.onPressed,
  });
  final Color textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
