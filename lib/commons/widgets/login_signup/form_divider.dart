import 'package:flutter/material.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

class AFormDivider extends StatelessWidget {
  const AFormDivider({super.key, required this.dividerText});
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? AColors.darkGrey : AColors.grey,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? AColors.darkGrey : AColors.grey,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
