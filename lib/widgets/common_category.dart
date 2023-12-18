import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String image;
  final String categoryName;
  final Function? onTap;
  const CategoryWidget(
      {super.key, required this.image, required this.categoryName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Column(
            children: [
              Image.asset(image),
              Text(categoryName),
            ],
          )),
    );
  }
}
