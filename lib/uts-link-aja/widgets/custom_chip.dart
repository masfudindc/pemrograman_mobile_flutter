import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.icon,
    required this.label,
    this.iconSize = 36,
    this.backgroundColor = Colors.white,
    this.spacing = 0,
  });
  final IconData icon;
  final String label;
  final double iconSize;
  final Color backgroundColor;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        splashColor: Colors.grey[300],
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              icon,
              size: iconSize,
            ),
            SizedBox(height: spacing),
            Text(label),
          ],
        ),
      ),
    );
  }
}