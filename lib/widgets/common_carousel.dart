import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/image_constants.dart';
import '../utils/string_constants.dart';
import '../utils/text_styles.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            ImageConstants.template,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConstants.off,
                style: TextStyles.textStyleFont20Weight600,
              ),
              Text(
                StringConstants.now,
                style: TextStyles.textStyleFont14Weight400
                    .copyWith(color: ColorConstants.white),
              ),
              Text(
                StringConstants.allColors,
                style: TextStyles.textStyleFont14Weight400
                    .copyWith(color: ColorConstants.white),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width / 3.6,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.white, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Text(
                      StringConstants.shopNow,
                      style: TextStyles.textStyleFont14Weight600
                          .copyWith(color: ColorConstants.white),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: ColorConstants.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
