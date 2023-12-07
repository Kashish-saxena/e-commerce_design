import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return buildBody();
  }

  Widget buildBody() {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: AppBar(
        titleSpacing: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.logo),
            const SizedBox(
              width: 10,
            ),
            const Text("Stylish"),
          ],
        ),
        titleTextStyle: TextStyles.textStyleFontLibreCaslonText,
        leading: InkWell(
          child: Image.asset(ImageConstants.drawerImage),
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Image.asset(ImageConstants.profile),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: const SingleChildScrollView(),
    );
  }
}
