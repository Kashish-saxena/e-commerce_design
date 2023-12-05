import 'package:flutter/material.dart';
import 'package:login_registeration_design/utils/string_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';
import 'package:login_registeration_design/widgets/common_button.dart';
import 'package:login_registeration_design/widgets/common_textformfield.dart';

import '../utils/color_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, this.title});
  final String? title;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisiblity = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(StringConstants.welcomeBack,
                style: TextStyles.textStyleFont36Weight700),
            const TextFormFieldWidget(
                obscureText: false,
                hint: StringConstants.userNameOrEmail,
                prefixIcon: Icons.person),
            TextFormFieldWidget(
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
                      color: ColorConstants.grey),
                )),
            const Align(
                alignment: Alignment.topRight,
                child: Text(
                  StringConstants.forgotPassword,
                  style: TextStyles.textStyleFont12Weight400,
                )),
            const ButtonWidget(text: StringConstants.login),
            const Align(
              alignment: Alignment.center,
              child: Text(StringConstants.or,
                  style: TextStyles.textStyleFont12Weight500),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(StringConstants.createAnAccount,
                  style: TextStyles.textStyleFont14Weight400),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(221, 255, 211, 211),
                side: const BorderSide(color: ColorConstants.red, width: 1),
                shape: const CircleBorder(
                    side: BorderSide(style: BorderStyle.solid)),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.apple,
                color: ColorConstants.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
