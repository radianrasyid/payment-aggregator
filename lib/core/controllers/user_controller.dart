import 'package:get/get.dart';

class UserController extends GetxController {
  final userName = 'User'.obs;
  changeUserName(data) {
    return userName.value = data;
  }
}
