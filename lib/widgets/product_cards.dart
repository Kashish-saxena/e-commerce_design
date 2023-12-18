import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

import '../utils/image_constants.dart';

class ProductCardsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final String orignalPrice;
  final String off;
  const ProductCardsWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.orignalPrice,
      required this.off,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2.43,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
          ),
          Text(title,
              style: TextStyles.textStyleFont12Weight500
                  .copyWith(color: ColorConstants.black)),
          RichText(
              text: WidgetSpan(
            child: Text(description),
          )),
          Text(price),
          Row(
            children: [
              Text(orignalPrice,
                  style: TextStyles.textStyleFont14Weight400.copyWith(
                      color: ColorConstants.greyBBBBBB,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: ColorConstants.greyBBBBBB)),
              const SizedBox(
                width: 5,
              ),
              Text(
                off,
                style: TextStyles.textStyleFont14Weight400,
              ),
            ],
          ),
          Row(
            children: List.generate(
              5,
              (index) => Flexible(
                child: Image.asset(ImageConstants.star),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
