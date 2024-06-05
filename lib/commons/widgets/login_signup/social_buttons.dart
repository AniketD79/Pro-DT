import 'package:flutter/material.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/constants/image_strings.dart';
import 'package:newsapp/utils/constants/sizes.dart';

class ASocialButtons extends StatelessWidget {
  const ASocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: ASizes.iconMd,
                  width: ASizes.iconMd,
                  image: AssetImage(AImages.googleLogo))),
        ),
        const SizedBox(
          width: ASizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: ASizes.iconMd,
                  width: ASizes.iconMd,
                  image: AssetImage(AImages.faceBookLogo))),
        ),
      ],
    );
  }
}
