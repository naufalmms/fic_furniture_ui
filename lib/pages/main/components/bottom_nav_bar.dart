// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic_furniture_shop_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            bottomAppBarItems.length,
            (index) => IconButton(
                onPressed: () {
                  onTap(index);
                },
                icon: SvgPicture.asset(
                  index == currentIndex
                      ? bottomAppBarItems[index]["selected"]!
                      : bottomAppBarItems[index]["unselected"]!,
                ))),
      ),
    );
  }
}
