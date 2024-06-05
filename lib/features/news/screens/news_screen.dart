import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/features/news/controllers/news_controller.dart';

import 'package:newsapp/features/news/controllers/news_servvice.dart';
import 'package:newsapp/utils/constants/colors.dart';

import 'package:newsapp/utils/helpers/helpers.dart';

class NewsScreen extends StatelessWidget {
  final NewsController newsController = Get.put(NewsController());
  final NewsService newsService = NewsService(
      baseUrl: 'https://inshortsapi.vercel.app/news?category=national');

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? Colors.white : Colors.black),
        title: Text(
          'National News',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: newsService.fetchCategory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData ||
              snapshot.data == null ||
              snapshot.data!.data == null ||
              snapshot.data!.data!.isEmpty) {
            return const Center(child: Text('No data found'));
          } else {
            return PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (context, index) {
                var dataItem = snapshot.data!.data![index];
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(dataItem.imageUrl ?? ''),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dataItem.title ?? 'No title',
                          style: Theme.of(context).textTheme.headlineSmall,
                          // style: const TextStyle(
                          //     fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          dataItem.content ?? 'No content',
                          style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: dark ? Colors.grey : AColors.textPrimary),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Author: ${dataItem.author ?? 'Unknown'}',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      IconButton(
                        icon: Obx(() => Icon(
                              newsController.isBookmarked(dataItem)
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              color: Colors.blue,
                            )),
                        onPressed: () {
                          newsController.toggleBookmark(dataItem);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // View bookmarked news
          // You can navigate to a new screen to display bookmarked news here
        },
        child: const Icon(Icons.bookmark),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
