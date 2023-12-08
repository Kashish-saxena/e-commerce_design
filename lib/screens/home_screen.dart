import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/string_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';
import 'package:login_registeration_design/widgets/common_carousel.dart';
import 'package:login_registeration_design/widgets/common_category.dart';
import 'package:login_registeration_design/widgets/common_filters.dart';
import 'package:login_registeration_design/widgets/common_search_field.dart';
import 'package:login_registeration_design/widgets/featured_category.dart';

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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(StringConstants.featured,
                      style: TextStyles.textStyleFont20Weight600
                          .copyWith(color: Colors.black)),
                  const SizedBox(
                    child: Row(children: [
                      FilterWidget(
                          image: ImageConstants.sort,
                          text: StringConstants.sort),
                      SizedBox(
                        width: 16,
                      ),
                      FilterWidget(
                          image: ImageConstants.filter,
                          text: StringConstants.filter),
                    ]),
                  ),
                ],
              ),
              const FeaturedCategory(),
              const CarouselWidget(),
              Align(
                  heightFactor: 2,
                  alignment: Alignment.center,
                  child: Image.asset(ImageConstants.scroll)),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.blue,
                ),
                child: ListTile(
                  title: const Text(StringConstants.deal,
                      style: TextStyles.textStyleFont20Weight600),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.alarm,
                        color: ColorConstants.white,
                      ),
                      const SizedBox(width: 5),
                      Text(StringConstants.remaining,
                          style: TextStyles.textStyleFont12Weight500
                              .copyWith(color: ColorConstants.greyF3F3F3)),
                    ],
                  ),
                  trailing: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorConstants.white, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Wrap(
                        children: [
                          Text(
                            StringConstants.view,
                            style: TextStyles.textStyleFont12Weight500
                                .copyWith(color: ColorConstants.white),
                          ),
                          const Icon(
                            Icons.arrow_forward_outlined,
                            color: ColorConstants.white,
                            size: 20,
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
