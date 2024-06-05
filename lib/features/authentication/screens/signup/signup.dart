import 'package:newsapp/commons/widgets/login_signup/form_divider.dart';
import 'package:newsapp/commons/widgets/login_signup/social_buttons.dart';
import 'package:newsapp/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSPace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                ATexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),

              //Form
              const ASignUpForm(),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),
              //Divider
              AFormDivider(dividerText: ATexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),
              //Social Icons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
