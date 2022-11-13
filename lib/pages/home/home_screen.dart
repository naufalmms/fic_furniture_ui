import 'package:fic_furniture_shop_ui/pages/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icon/icon_menu.svg",
            ),
          ),
          actions: [
            IconButton(
              iconSize: 40,
              padding: const EdgeInsets.only(
                right: 14,
              ),
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icon/icon_search.svg",
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 46,
            left: 14,
            right: 14,
          ),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Body(),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
