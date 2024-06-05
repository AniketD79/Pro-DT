import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/device/device_utility.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

class ASearchContainer extends StatelessWidget {
  const ASearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: ASizes.defaultSPace),
  });
  final IconData? icon;
  final String text;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: ADeviceutils.getScreenWidth(context),
          padding: const EdgeInsets.all(ASizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? AColors.dark
                    : AColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ASizes.cardRadiusLg),
            border: showBorder ? Border.all(color: AColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AColors.darkerGrey,
              ),
              const SizedBox(
                width: ASizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
