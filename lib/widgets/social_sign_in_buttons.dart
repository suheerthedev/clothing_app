import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSignInButtons extends StatelessWidget {
  const SocialSignInButtons({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: FaIcon(FontAwesomeIcons.apple),
          ),
          CircleAvatar(
            child: FaIcon(FontAwesomeIcons.google),
          ),
          CircleAvatar(
            child: FaIcon(FontAwesomeIcons.facebook),
          )
        ],
      ),
    );
  }
}
