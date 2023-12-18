import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/string_constants.dart';
import '../utils/text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
        dense: true,
        minVerticalPadding: 8,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: const Icon(Icons.search,
            size: 20, color: ColorConstants.greyBBBBBB),
        title: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: StringConstants.search,
              hintStyle: TextStyles.textStyleFont16Weight400
                  .copyWith(color: ColorConstants.greyBBBBBB)),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_voice_outlined,
                size: 24, color: ColorConstants.greyBBBBBB)),
      ),
    );
  }
}
