import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../theme/colors.dart';
import '../../../models/product.dart';

class ItemsCard extends StatelessWidget {
  final Product product;
  const ItemsCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    product.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SvgPicture.asset(
                    product.favorite == true
                        ? "assets/icon/icon_love_selected.svg"
                        : "assets/icon/icon_love_unselected.svg",
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    product.titleProd,
                    maxFontSize: 14,
                    minFontSize: 10,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        "Rp ${product.price}",
                        maxFontSize: 20,
                        minFontSize: 16,
                        style: const TextStyle(
                          color: AppColors.nflTextColor,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.amber,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          AutoSizeText(
                            "${product.rating}",
                            maxFontSize: 12,
                            minFontSize: 8,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
