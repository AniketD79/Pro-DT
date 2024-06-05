import 'package:newsapp/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSPace),
        child: Column(
          children: [
            //Headings
            Text(
              ATexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),

            Text(
              ATexts.forgetPasswordPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ASizes.spacebtwSections * 2,
            ),

            //TextField
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ATexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),

            const SizedBox(
              height: ASizes.spacebtwSections,
            ),
            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(ATexts.asubmit)),
            )
          ],
        ),
      ),
    );
  }
}
