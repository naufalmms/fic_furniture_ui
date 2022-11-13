import 'package:flutter/material.dart';

class ColorProduct extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorProduct({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      padding: const EdgeInsets.all(3),
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected == true ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
