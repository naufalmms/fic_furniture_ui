// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic_furniture_shop_ui/pages/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'package:fic_furniture_shop_ui/models/product.dart';

import '../../../theme/colors.dart';
import 'categories.dart';
import 'items_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Discover the most\nmodern furniture",
          style: TextStyle(
            color: AppColors.nflTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Categories(),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Recomended Furnitures",
          style: TextStyle(
            fontSize: 16,
            color: AppColors.nflTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: .7,
              // mainAxisExtent: 243,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: products[index]),
                ),
              ),
              child: ItemsCard(
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
