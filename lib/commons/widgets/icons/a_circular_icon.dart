import 'package:flutter/material.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/constants/sizes.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

//A custom circular icon widget with a background color.
//properties are:

//container [width], [height],, [backgroundColor]

//Icon's [size], [color], [onPressed]

class ACircularIcon extends StatelessWidget {
  const ACircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = ASizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : AHelperFunctions.isDarkMode(context)
                ? AColors.black.withOpacity(0.9)
                : AColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
