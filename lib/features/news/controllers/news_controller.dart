import 'package:get/get.dart';
import 'package:newsapp/features/news/models/news_model.dart';

class NewsController extends GetxController {
  var bookmarks = <Data>{}.obs;

  void toggleBookmark(Data dataItem) {
    if (bookmarks.contains(dataItem)) {
      bookmarks.remove(dataItem);
    } else {
      bookmarks.add(dataItem);
    }
  }

  bool isBookmarked(Data dataItem) {
    return bookmarks.contains(dataItem);
  }
}
