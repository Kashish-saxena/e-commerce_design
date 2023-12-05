import 'package:flutter/material.dart';

import '../utils/color_constants.dart';
import '../utils/text_styles.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  const ButtonWidget({super.key, required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 45),
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ColorConstants.red),
          padding: const EdgeInsetsDirectional.symmetric(vertical: 15),
          backgroundColor: ColorConstants.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: () {},
        child: Text(widget.text, style: TextStyles.textStyleFont20Weight600),
      ),
    );
  }
}
