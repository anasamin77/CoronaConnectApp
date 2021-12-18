import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {required this.icon,
      required this.iconColor,
      required this.buttonColor,
      required this.screenNumber});
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;
  final Widget screenNumber;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: 40,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screenNumber));
      },
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 90,
        height: 90,
      ),
      shape: const CircleBorder(),
      fillColor: buttonColor,
    );
  }
}
