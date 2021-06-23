import 'dart:convert';

import 'package:flutter_training_kca/API_and_Parsed/Items.dart';
import 'package:http/http.dart';

class ApiService {
  final pointUrl =
      "https://api.github.com/search/repositories?q=trending&sort=start";

  Future<List<Items>> getItems() async {
    final Response res = await get(Uri.parse(pointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['items'];
      List<Items> items =
          body.map((dynamic item) => Items.fromJson(item)).toList();
      return items;
    } else {
      throw ("Can't get the Owners");
    }
  }
}
