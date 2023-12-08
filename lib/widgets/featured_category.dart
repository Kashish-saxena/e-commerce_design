import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/image_constants.dart';
import '../utils/string_constants.dart';
import 'common_category.dart';

class FeaturedCategory extends StatelessWidget {
  const FeaturedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0A000000),
              spreadRadius: 5,
              blurRadius: 6,
            )
          ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryWidget(
            image: ImageConstants.beauty,
            categoryName: StringConstants.beauty,
          ),
          CategoryWidget(
              image: ImageConstants.fashion,
              categoryName: StringConstants.fashion),
          CategoryWidget(
              image: ImageConstants.kids, categoryName: StringConstants.kids),
          CategoryWidget(
              image: ImageConstants.mens, categoryName: StringConstants.mens),
          CategoryWidget(
              image: ImageConstants.womens,
              categoryName: StringConstants.womens),
        ],
      ),
    );
  }
}
