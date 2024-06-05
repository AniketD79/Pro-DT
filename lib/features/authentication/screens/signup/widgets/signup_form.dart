import 'package:newsapp/features/authentication/screens/signup/verify-email.dart';
import 'package:newsapp/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ASignUpForm extends StatelessWidget {
  const ASignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: ATexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              )),
              const SizedBox(
                width: ASizes.spaceBtwinputFields,
              ),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: ATexts.lastName, prefixIcon: Icon(Iconsax.user)),
              )),
            ],
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields,
          ),

          //Username
          TextFormField(
            decoration: const InputDecoration(
                labelText: ATexts.userName,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields,
          ),
          //Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: ATexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields,
          ),
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: ATexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwinputFields,
          ),
          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: ATexts.phoneNo,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: ASizes.spacebtwSections,
          ),

          //Terms and comditions checkbox
          const ATermsAndConditions(),
          const SizedBox(
            height: ASizes.spacebtwSections,
          ),
          //Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(ATexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
