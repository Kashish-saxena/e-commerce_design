import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/string_constants.dart';
import '../utils/text_styles.dart';

class DealOfTheDayWidget extends StatefulWidget {
  const DealOfTheDayWidget({super.key});

  @override
  State<DealOfTheDayWidget> createState() => _DealOfTheDayWidgetState();
}

class _DealOfTheDayWidgetState extends State<DealOfTheDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.blue,
      ),
      child: ListTile(
        title: const Text(StringConstants.deal,
            style: TextStyles.textStyleFont20Weight600),
        subtitle: Row(
          children: [
            const Icon(
              Icons.alarm,
              color: ColorConstants.white,
            ),
            const SizedBox(width: 5),
            Text(StringConstants.remaining,
                style: TextStyles.textStyleFont12Weight500
                    .copyWith(color: ColorConstants.greyF3F3F3)),
          ],
        ),
        trailing: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: ColorConstants.white, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Wrap(
              children: [
                Text(
                  StringConstants.view,
                  style: TextStyles.textStyleFont12Weight500
                      .copyWith(color: ColorConstants.white),
                ),
                const Icon(
                  Icons.arrow_forward_outlined,
                  color: ColorConstants.white,
                  size: 20,
                )
              ],
            )),
      ),
    );
  }
}
