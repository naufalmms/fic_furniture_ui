import 'package:fic_furniture_shop_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CounterCart extends StatefulWidget {
  const CounterCart({super.key});

  @override
  State<CounterCart> createState() => _CounterCartState();
}

class _CounterCartState extends State<CounterCart> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinButton(icon: Icons.remove, type: false),
        Container(
          width: 32,
          height: 32,
          color: const Color(0xFFA9A9A9).withOpacity(0.5),
          alignment: Alignment.center,
          child: Text(
            numOfItems.toString(),
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.nflTextColor,
            ),
          ),
        ),
        buildOutlinButton(icon: Icons.add, type: true),
      ],
    );
  }

  SizedBox buildOutlinButton({
    required IconData icon,
    required bool type,
  }) {
    return SizedBox(
      width: 32,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: type
                ? const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
          ),
        ),
        onPressed: () {
          setState(() {
            type
                ? numOfItems++
                : numOfItems > 1
                    ? numOfItems--
                    : numOfItems;
          });
        },
        child: Icon(
          icon,
          color: AppColors.nflTextColor,
        ),
      ),
    );
  }
}
