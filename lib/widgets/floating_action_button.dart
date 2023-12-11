import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorConstants.white,
      shape: const CircleBorder(side: BorderSide.none),
      onPressed: () {},
      child: const Icon(
        Icons.shopping_cart_outlined,
      ),
    );
  }
}
