import 'package:flutter/material.dart';
import 'package:newsapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/text_theme.dart';
import 'package:newsapp/utils/theme/custom_themes/textform_field.dart';

class AAppTheme {
  AAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTextTheme,
    primaryColor: Colors.blue,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    chipTheme: AChipTheme.lightChipTheme,
    checkboxTheme: ACheckBoxTheme.lightCheckboxTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ATextTheme.darkTextTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    chipTheme: AChipTheme.darkChipTheme,
    checkboxTheme: ACheckBoxTheme.darkCheckboxTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
  );
}
