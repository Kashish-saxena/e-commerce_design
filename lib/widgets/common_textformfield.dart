import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

import '../utils/color_constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hint;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(dynamic)? validator;
  final Function(String)? onChange;

  final TextEditingController controller;
  const TextFormFieldWidget({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.validator,
    required this.controller,
    this.onChange,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onChanged: widget.onChange,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        fillColor: ColorConstants.greyF3F3F3,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1)),
        hintText: widget.hint,
        hintStyle: TextStyles.textStyleFont12Weight500,
        suffixIcon: widget.suffixIcon,
        prefixIcon: Icon(widget.prefixIcon),
        
      ),
    );
  }
}
