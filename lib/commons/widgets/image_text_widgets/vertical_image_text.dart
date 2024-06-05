import 'package:flutter/material.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

class AVerticalImageText extends StatelessWidget {
  const AVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
        child: Column(
          children: [
            //Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ASizes.sm),
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? AColors.black : AColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? AColors.light : AColors.dark,
                ),
              ),
            ),

            //Text
            const SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),

            //we are wrapping it with sizdbox because if category text size is large then it is looking bad
            //also using overflow to add dots and no error, maxline=1 so that it willnot go on next line
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
