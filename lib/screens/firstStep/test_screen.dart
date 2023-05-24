import 'package:payment_aggregator/screens/components/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Button1(
                onTap: () async {
                  final SharedPreferences? prefs = await _prefs;
                  prefs?.clear();
                  Get.offAll(const TestScreen());
                },
                buttonName: 'Logout'),
            Button1(
                onTap: () async {
                  final SharedPreferences? prefs = await _prefs;
                  print(prefs?.get('token'));
                },
                buttonName: 'Show Token')
          ],
        ),
      ),
    );
  }
}
