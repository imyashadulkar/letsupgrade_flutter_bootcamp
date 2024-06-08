import 'dart:convert';

import 'package:letsupgrade_flutter_bootcamp/json_model.dart';
import 'package:http/http.dart' as http;

class AppService {
  static Future<List<JsonModel>> getPosts() async {
    http.Response getData =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List<dynamic> postsList = jsonDecode(getData.body);

    List<JsonModel> finalPostsList = [];
    postsList.forEach((element) {
      finalPostsList.add(JsonModel.fromMap(element));
    });
    return finalPostsList;
  }
}
