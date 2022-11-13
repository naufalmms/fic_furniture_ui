import 'package:fic_furniture_shop_ui/pages/details/components/body.dart';
import 'package:fic_furniture_shop_ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fic_furniture_shop_ui/models/product.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Center(
            child: Text(
              'Details',
              style: TextStyle(
                color: AppColors.nflTextColor,
              ),
            ),
          ),
          leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 20,
              color: AppColors.nflTextColor,
            ),
          ),
          actions: [
            IconButton(
              iconSize: 40,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icon/icon_love_selected.svg",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              padding: const EdgeInsets.only(right: 14),
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 20,
                color: AppColors.nflTextColor,
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: BodyDetails(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.nflTextColor,
          elevation: 0,
          onPressed: () {},
          label: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 90,
            child: const Text("ADD TO CART"),
          ),
        ),
      ),
    );
  }
}
