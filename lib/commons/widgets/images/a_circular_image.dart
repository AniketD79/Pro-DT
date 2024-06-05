import 'package:flutter/material.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

class ACircularImage extends StatelessWidget {
  const ACircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isnetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = ASizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isnetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (AHelperFunctions.isDarkMode(context)
                  ? AColors.black
                  : AColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: isnetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
        fit: fit,
      ),
    );
  }
}
