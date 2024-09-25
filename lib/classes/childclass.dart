import 'package:flutter/material.dart';

import '../constants.dart';

class ContainerChild extends StatelessWidget {
  final String text;
  final IconData icon;

  const ContainerChild({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
