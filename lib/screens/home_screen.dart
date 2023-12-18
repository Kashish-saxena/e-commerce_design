import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/color_constants.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/string_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';
import 'package:login_registeration_design/widgets/bottom_navigation.dart';
import 'package:login_registeration_design/widgets/common_carousel.dart';
import 'package:login_registeration_design/widgets/common_filters.dart';
import 'package:login_registeration_design/widgets/common_search_field.dart';
import 'package:login_registeration_design/widgets/deal_of_the_day.dart';
import 'package:login_registeration_design/widgets/featured_category.dart';
import 'package:login_registeration_design/widgets/floating_action_button.dart';
import 'package:login_registeration_design/widgets/footwear_card.dart';
import 'package:login_registeration_design/widgets/product_cards.dart';
import 'package:login_registeration_design/widgets/special_offer.dart';

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
                child: Image.asset(ImageConstants.scroll),
              ),
              const DealOfTheDayWidget(),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  const Wrap(
                    children: [
                      ProductCardsWidget(
                        image: ImageConstants.kurta,
                        title: StringConstants.womenPrinted,
                        description: StringConstants.description,
                        off: "40%Off",
                        orignalPrice: "2499",
                        price: "1500",
                      ),
                      ProductCardsWidget(
                        image: ImageConstants.shoes,
                        title: StringConstants.womenPrinted,
                        description: StringConstants.description,
                        off: "50%Off",
                        orignalPrice: "4999",
                        price: "2499",
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    backgroundColor: ColorConstants.greyBBBBBB,
                    elevation: 6,
                    shape: const CircleBorder(side: BorderSide.none),
                    onPressed: () {},
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
              const SpecialOfferWidget(),
              const FootwearCardWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButtonWidget(),
    );
  }
}
