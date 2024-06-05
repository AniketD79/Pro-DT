import 'package:newsapp/utils/constants/image_strings.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/constants/text_strings.dart';
import 'package:newsapp/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';

class ALoginHeader extends StatelessWidget {
  const ALoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image:
                AssetImage(dark ? AImages.darkAppLogo : AImages.lightAppLogo)),
        Text(ATexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: ASizes.sm,
        ),
        Text(ATexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
