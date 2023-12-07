import 'package:flutter/material.dart';
import 'package:login_registeration_design/screens/registeration_screen.dart';
import 'package:login_registeration_design/utils/image_constants.dart';
import 'package:login_registeration_design/utils/validations.dart';
import 'package:login_registeration_design/utils/string_constants.dart';
import 'package:login_registeration_design/utils/text_styles.dart';
import 'package:login_registeration_design/widgets/common_button.dart';
import 'package:login_registeration_design/widgets/common_icon_button.dart';
import 'package:login_registeration_design/widgets/common_textformfield.dart';
import '../utils/color_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, this.title});
  final String? title;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  bool passwordVisiblity = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
          key: loginkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(StringConstants.welcomeBack,
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
                },
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormFieldWidget(
                controller: passwordController,
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
                ),
                validator: (val) {
                  return Validations.isPasswordValid(val);
                },
              ),
              Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(top: 9),
                child: const Text(
                  StringConstants.forgotPassword,
                  style: TextStyles.textStyleFont12Weight400,
                ),
              ),
              ButtonWidget(
                text: StringConstants.login,
                onPressed: () {
                  if (loginkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterationScreen(),
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
                  IconButtonWidget(image: ImageConstants.googleImage),
                  IconButtonWidget(image: ImageConstants.appleImage),
                  IconButtonWidget(image: ImageConstants.facebookImage),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(StringConstants.createAnAccount,
                      style: TextStyles.textStyleFont14Weight400),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RegisterationScreen()));
                    },
                    child: Text(StringConstants.signUp,
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
