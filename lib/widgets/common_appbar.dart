// import 'package:flutter/material.dart';

// import '../utils/color_constants.dart';
// import '../utils/image_constants.dart';
// import '../utils/text_styles.dart';

// class AppBarWidget extends StatefulWidget {
//   const AppBarWidget({super.key});

//   @override
//   State<AppBarWidget> createState() => _AppBarWidgetState();
// }

// class _AppBarWidgetState extends State<AppBarWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
      
//       backgroundColor: ColorConstants.bgColor,
//       titleSpacing: 10,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(ImageConstants.logo),
//           const SizedBox(
//             width: 10,
//           ),
//           const Text("Stylish"),
//         ],
//       ),
//       titleTextStyle: TextStyles.textStyleFontLibreCaslonText,
//       leading: InkWell(
//         child: Image.asset(ImageConstants.drawerImage),
//         onTap: () {
//           scaffoldKey.currentState?.openDrawer();
//         },
//       ),
//       actions: [
//         Image.asset(ImageConstants.profile),
//         const SizedBox(
//           width: 20,
//         )
//       ],
//     );
//   }
// }
