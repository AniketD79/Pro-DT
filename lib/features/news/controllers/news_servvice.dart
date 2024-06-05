import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/features/news/models/news_model.dart';

class NewsService {
  final String baseUrl;

  NewsService({required this.baseUrl});

  Future<Category?> fetchCategory() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl'));

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, then parse the JSON.
        return Category.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load category');
      }
    } catch (e) {
      // Handle any errors that occur during the request.
      print('Error fetching category: $e');
      return null;
    }
  }
}
