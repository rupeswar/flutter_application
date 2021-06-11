import 'dart:convert';

import 'package:http/http.dart';

import 'Post.dart';

class APIService {
  static Future<List<Post>> getData() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    return Post.listFromJson(jsonDecode(response.body));
  }
}
