import 'dart:convert';

import 'package:payment_aggregator/core/model/user_list_model.dart';
import 'package:http/http.dart' as http;

class ServiceApiHit {
  Future<List<UserList>> getAllDataUser() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((e) => UserList.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
