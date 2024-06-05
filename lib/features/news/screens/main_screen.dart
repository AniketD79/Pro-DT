import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:newsapp/features/authentication/screens/login/login.dart';
import 'package:newsapp/features/news/screens/news_screen.dart';
import 'package:newsapp/utils/constants/colors.dart';
import 'package:newsapp/utils/device/device_utility.dart';
import 'package:newsapp/utils/helpers/helpers.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<String> categories = [
    'All',
    'National',
    'Business',
    'Sports',
    'World',
    'Politics',
    'Technology',
    'Startup',
    'Entertainment',
    'Miscellaneous',
    'Hatke',
    'Science',
    'Automobile',
  ];

  List<IconData> icons = [
    Icons.all_inclusive,
    Icons.flag,
    Icons.business,
    Icons.sports,
    Icons.map,
    Icons.person,
    Icons.device_hub,
    Iconsax.building,
    Icons.movie,
    Icons.miscellaneous_services,
    Icons.difference,
    Icons.science,
    Iconsax.car
  ];
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
        title: Text(
          'Pro-DT News',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Welcome To Pro-DT News",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      drawer: Container(
        width: Get.width * 0.7,
        decoration: BoxDecoration(color: dark ? Colors.black : Colors.white),
        child: Column(
          children: [
            SizedBox(
              height: ADeviceutils.getAppBarHeight(),
            ),
            const Card(
              elevation: 0,
              child: ListTile(
                title: Text('Select Category'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    icons[index],
                    color: AColors.primary,
                  ),
                  title: Text(
                    categories[index].toString(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  onTap: () {
                    if (index == 1) {
                      Get.to(() => NewsScreen());
                    } else {}
                  },
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              onTap: () => Get.offAll(() => const LoginScreen()),
            )
          ],
        ),
      ),
    );
  }
}
