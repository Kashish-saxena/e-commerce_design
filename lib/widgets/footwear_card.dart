import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

class FootwearCardWidget extends StatelessWidget {
  const FootwearCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: ColorConstants.white,
        border: Border(
          left: BorderSide(width: 10, color: Colors.orange),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            spreadRadius: 5,
            blurRadius: 6,
          )
        ],
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstants.heels),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Flat and Heels",
                      style: TextStyles.textStyleFont16Weight400
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    const Text("Stand a chance to get rewarded"),
                    Align(
                      alignment: Alignment.topRight,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: ColorConstants.red),
                            backgroundColor: ColorConstants.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: const BorderSide(
                                    color: ColorConstants.red))),
                        onPressed: () {},
                        child: Row(children: [
                          Text(
                            "Visit Now",
                            style: TextStyles.textStyleFont14Weight400
                                .copyWith(color: ColorConstants.white),
                          ),
                          const Icon(Icons.arrow_forward,
                              color: ColorConstants.white)
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
