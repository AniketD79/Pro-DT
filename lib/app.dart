import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/features/authentication/screens/login/login.dart';

import 'package:newsapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,

      //Show a loader meanwhile auth repo is deciding to show relevant screen.
      // home: const Scaffold(
      //   backgroundColor: AColors.primary,
      //   body: Center(
      //     child: CircularProgressIndicator(
      //       color: Colors.white,
      //       backgroundColor: Colors.red,
      //     ),
      //   ),
      home: LoginScreen(),
    );
  }
}
