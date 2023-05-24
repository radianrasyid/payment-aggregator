import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegistrationController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail(
      {required name, required email, required password}) async {
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse(
        'http://restapi.adequateshop.com/api/authaccount/registration');
    Map body = {'name': name, 'email': email, 'password': password};

    http.Response response =
        await http.post(url, body: jsonEncode(body), headers: headers);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      if (json['code'] == 0) {
        var token = json['data']['Token'];
        print(token);
        final SharedPreferences prefs = await _prefs;

        await prefs.setString('token', token);
      } else {
        print('balikan gagal');
      }
    } else {
      print('gagal ngehit');
    }
  }
}
