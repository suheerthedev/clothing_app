import 'package:flutter/material.dart';

class CustomScreenHeading extends StatelessWidget {
  const CustomScreenHeading(
      {super.key, required this.mainHeading, required this.subHeading});
  final String mainHeading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          mainHeading,
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Text(
            subHeading,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        )
      ],
    );
  }
}
