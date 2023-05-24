import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxString path = '/'.obs;
  RxInt index = 0.obs;

  changePath(data) {
    path.value = data;
  }

  changeIndex(data) {
    index.value = data;
  }
}
