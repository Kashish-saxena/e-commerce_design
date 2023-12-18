import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/string_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        leading: Image.asset(ImageConstants.offer),
        title: Text(StringConstants.special,
            style: TextStyles.textStyleFont20Weight600
                .copyWith(color: ColorConstants.black)),
        subtitle: Text(StringConstants.offer,
            style: TextStyles.textStyleFont14Weight400
                .copyWith(color: ColorConstants.black)),
      ),
    );
  }
}
