import 'package:newsapp/commons/styles/spacing_styles.dart';
import 'package:newsapp/commons/widgets/login_signup/form_divider.dart';
import 'package:newsapp/commons/widgets/login_signup/social_buttons.dart';
import 'package:newsapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:newsapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo Title and Subtitle
              ALoginHeader(),

              //Login Form
              ALoginForm(),

              //Divider
              AFormDivider(dividerText: ATexts.orSignInWith),
              SizedBox(height: ASizes.spacebtwSections),
              //Footer Social Icons

              ASocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
