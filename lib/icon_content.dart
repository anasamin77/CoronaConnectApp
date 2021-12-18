import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.iconColor});

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: iconColor,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
