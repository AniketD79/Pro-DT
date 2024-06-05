import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newsapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:newsapp/features/authentication/screens/signup/signup.dart';
import 'package:newsapp/features/news/screens/main_screen.dart';

import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spacebtwSections),
      child: Column(
        children: [
          //Email
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ATexts.email),
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields,
          ),

          //Password
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: ATexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields / 2,
          ),

          //Remember Me and Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Checkbox(value: true, onChanged: (value) {}),
              const Text(ATexts.rememberMe),
              // SizedBox(
              //   width: ASizes.defaultSPace,
              // ),
              //Forget password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(ATexts.forgotPassword))
            ],
          ),
          const SizedBox(
            height: ASizes.spacebtwSections,
          ),

          //SIgn In Button
          //To make it full width wrap with sizedbox
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => MainScreen()),
                  child: const Text(ATexts.signIn))),
          const SizedBox(
            height: ASizes.spaceBtwItems,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignupScreen());
                  },
                  child: const Text(ATexts.createAccount))),
        ],
      ),
    ));
  }
}
