import 'package:newsapp/commons/widgets/success_screen/success_screen.dart';
import 'package:newsapp/features/authentication/screens/login/login.dart';
import 'package:newsapp/utils/constants/image_strings.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:newsapp/utils/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSPace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(AImages.emailSent),
                width: AHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),

              //Title and Subtitle
              Text(
                ATexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ASizes.spaceBtwItems,
              ),

              Text(
                'aniketdarje9@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ASizes.spaceBtwItems,
              ),
              Text(
                ATexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: ASizes.spacebtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          title: ATexts.yourAccountCreatedTitle,
                          subtitle: ATexts.yourAccountCreatedSubTitle,
                          image: AImages.success,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(ATexts.acontinue)),
              ),
              const SizedBox(
                height: ASizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(ATexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
