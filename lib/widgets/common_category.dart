import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/string_constants.dart';

class CategoryWidget extends StatefulWidget {
  final String image;
  final String categoryName;
  const CategoryWidget({super.key, required this.image,required this.categoryName});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            Image.asset(widget.image),
            Text(widget.categoryName),
          ],
        ));
  }
}
