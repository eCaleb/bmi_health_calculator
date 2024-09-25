import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onTouch; // Made onTouch optional by using VoidCallback?

  const ReusableCard({
    super.key,
    required this.color,
    this.cardChild,
    this.onTouch,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch, // If onTouch is null, no tap will be detected
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild ?? Container(), // Use cardChild if provided, otherwise an empty Container
      ),
    );
  }
}
