import 'dart:convert';

// import 'package:payment_aggregator/core/controllers/user_controller.dart';
import 'package:payment_aggregator/core/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  UserController userController = Get.put(UserController());

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url =
          Uri.parse('http://restapi.adequateshop.com/api/authaccount/login');
      Map body = {
        'email': emailController.text,
        'password': passwordController.text,
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          final SharedPreferences prefs = await _prefs;
          await prefs.setString('token', token);
          userController.changeUserName(json['data']['Name']);
          Get.toNamed("/dashboard");
          emailController.clear();
          passwordController.clear();
        } else if (json['code'] == 1) {
          print('gagal');
        }
      } else {
        print('error');
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
