// kategori tab
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../theme/colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategories(index),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 17,
        ),
        child: Container(
          alignment: Alignment.center,
          padding: selectedIndex == index
              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 2)
              : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selectedIndex == index
                ? AppColors.nflSelectedColor
                : Colors.transparent,
          ),
          child: Text(
            categories[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: selectedIndex == index
                  ? Colors.white
                  : AppColors.nflTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
