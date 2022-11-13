import 'package:fic_furniture_shop_ui/pages/details/components/color_product.dart';
import 'package:fic_furniture_shop_ui/pages/details/components/counter_cart.dart';
import 'package:fic_furniture_shop_ui/pages/details/components/star_icon_display.dart';
import 'package:fic_furniture_shop_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/image/img_detail_product.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 400,
          transform: Matrix4.translationValues(0.0, -50, 0.0),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 5,
                    width: 35,
                    color: AppColors.nflTextColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Wooden Coff",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.nflTextColor,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "Rp 12.000",
                      style: TextStyle(
                        color: AppColors.nflTextColor,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                const StarIconDisplay(value: 4),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "choose a color",
                      style: TextStyle(
                        color: AppColors.nflTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: const [
                        ColorProduct(
                            color: Color(0xFF9A9390), isSelected: true),
                        ColorProduct(
                            color: Color(0xFFEEA427), isSelected: false),
                        ColorProduct(
                            color: Color(0xFFE3E3E3), isSelected: false),
                        ColorProduct(
                            color: Color(0xFF80450A), isSelected: false),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Quality",
                      style: TextStyle(
                        color: AppColors.nflTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CounterCart()
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
