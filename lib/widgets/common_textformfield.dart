import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

import '../utils/color_constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hint;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const TextFormFieldWidget({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.lightGrey,
      margin: const EdgeInsets.only(top: 40),
      child: TextFormField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1)),
          hintText: widget.hint,
          hintStyle: TextStyles.textStyleFont12Weight500,
          suffixIcon: widget.suffixIcon,
          prefixIcon: Icon(widget.prefixIcon),
        ),
      ),
    );
  }
}
