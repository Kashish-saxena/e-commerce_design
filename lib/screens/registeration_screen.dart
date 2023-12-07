import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_registeration_design/screens/login_screen.dart';
import 'package:login_registeration_design/utils/validations.dart';

import '../utils/color_constants.dart';
import '../utils/string_constants.dart';
import '../utils/text_styles.dart';
import '../widgets/common_button.dart';
import '../widgets/common_icon_button.dart';
import '../widgets/common_textformfield.dart';
import 'home_screen.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  bool passwordVisiblity = false;
  bool confirmPasswordVisiblity = false;
  final _registerKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Form(
          key: _registerKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(StringConstants.createAnAccountRegister,
                  style: TextStyles.textStyleFont36Weight700),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldWidget(
                  controller: emailController,
                  obscureText: false,
                  hint: StringConstants.userNameOrEmail,
                  prefixIcon: Icons.person,
                  validator: (val) {
                    return Validations.isEmailValid(val);
                  }),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldWidget(
                  controller: passwordController,
                  validator: (val) {
                    return Validations.isPasswordValid(val);
                  },
                  hint: StringConstants.password,
                  prefixIcon: Icons.lock,
                  obscureText: passwordVisiblity,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisiblity = !passwordVisiblity;
                      });
                    },
                    icon: Icon(
                        passwordVisiblity
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: ColorConstants.grey676767),
                  )),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldWidget(
                  controller: confirmPasswordController,
                  validator: (val) {
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      return "Password does not match";
                    }
                    return null;
                  },
                  hint: StringConstants.confirmPassword,
                  prefixIcon: Icons.lock,
                  obscureText: passwordVisiblity,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        confirmPasswordVisiblity = !confirmPasswordVisiblity;
                      });
                    },
                    icon: Icon(
                        confirmPasswordVisiblity
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: ColorConstants.grey676767),
                  )),
              // Wrap(
              //   spacing: 7,
              //   children: [
              //     Text(
              //       StringConstants.clickRegister1,
              //       style: TextStyles.textStyleFont12Weight400
              //           .copyWith(color: ColorConstants.grey575757),
              //     ),
              //     Text(
              //       StringConstants.register,
              //       style: TextStyles.textStyleFont12Weight400
              //           .copyWith(color: ColorConstants.grey575757),
              //     ),
              //     Text(
              //       StringConstants.clickRegister1,
              //       style: TextStyles.textStyleFont12Weight400
              //           .copyWith(color: ColorConstants.grey575757),
              //     ),
              //   ],
              // ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.only(right: 0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: StringConstants.clickRegister1,
                    style: TextStyles.textStyleFont12Weight400
                        .copyWith(color: ColorConstants.grey676767),
                  ),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                      text: StringConstants.register,
                      style: TextStyles.textStyleFont12Weight400
                          .copyWith(color: ColorConstants.red),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // print("object");
                        }),
                  const WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: StringConstants.clickRegister2,
                    style: TextStyles.textStyleFont12Weight400
                        .copyWith(color: ColorConstants.grey575757),
                  )
                ])),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Flexible(
              //       child: Text(
              //         StringConstants.clickRegister1,
              //         style: TextStyles.textStyleFont12Weight400
              //             .copyWith(color: ColorConstants.grey575757),
              //       ),
              //     ),
              //     Flexible(
              //       child: Text(
              //         StringConstants.register,
              //         style: TextStyles.textStyleFont12Weight400
              //             .copyWith(color: ColorConstants.grey575757),
              //       ),
              //     ),
              //     Flexible(
              //       child: Text(
              //         StringConstants.clickRegister2,
              //         style: TextStyles.textStyleFont12Weight400
              //             .copyWith(color: ColorConstants.grey575757),
              //       ),
              //     )
              //   ],
              // ),
              ButtonWidget(
                text: StringConstants.createAccount,
                onPressed: () {
                  if (_registerKey.currentState!.validate() &&
                      confirmPasswordController.text ==
                          passwordController.text) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageScreen(),
                        ));
                  }
                },
              ),
              Align(
                alignment: Alignment.center,
                child: Text(StringConstants.or,
                    style: TextStyles.textStyleFont12Weight500
                        .copyWith(color: ColorConstants.grey575757)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonWidget(image: 'assets/images/google.png'),
                  IconButtonWidget(image: "assets/images/apple.png"),
                  IconButtonWidget(image: "assets/images/facebook.png"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(StringConstants.loginAccount,
                      style: TextStyles.textStyleFont14Weight400),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text(StringConstants.login,
                        style: TextStyles.textStyleFont14Weight600.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
