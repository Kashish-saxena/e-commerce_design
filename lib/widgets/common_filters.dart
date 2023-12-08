
import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/text_styles.dart';

class FilterWidget extends StatefulWidget {
  final String text;
  final String image;
  const FilterWidget({super.key, required this.text, required this.image});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
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
      child: Row(
        children: [
          Text(
            widget.text,
            style: TextStyles.textStyleFont12Weight500
                .copyWith(color: ColorConstants.black),
          ),
          Image.asset(
            widget.image,
            color: ColorConstants.black,
          ),
        ],
      ),
    );
  }
}
