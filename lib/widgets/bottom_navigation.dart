import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 25,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      unselectedItemColor: ColorConstants.black,
      selectedItemColor: ColorConstants.black,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_work_outlined,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "Wishlist"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: "Setting"),
      ],
    );
  }
}
