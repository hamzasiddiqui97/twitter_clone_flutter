import 'package:get/get.dart';

class BottomNavIndexController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updatePageIndex(int index) {
    currentIndex.value = index;
  }
}
