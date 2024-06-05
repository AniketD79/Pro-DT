import 'package:newsapp/utils/constants/image_strings.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:newsapp/utils/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSPace),
          child: Column(
            children: [
              //Image with 60% of screen width
              Image(
                image: const AssetImage(AImages.emailSent),
                width: AHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),

              //Title and Subtitle
              Text(
                ATexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ASizes.spaceBtwItems,
              ),

              Text(
                ATexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ASizes.spacebtwSections,
              ),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(ATexts.adone)),
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
