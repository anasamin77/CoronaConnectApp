import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour,
      required this.cardChild,
      required this.screenNumber});
  final Color colour;
  final Widget cardChild;
  final Widget screenNumber;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenNumber,
            ));
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
