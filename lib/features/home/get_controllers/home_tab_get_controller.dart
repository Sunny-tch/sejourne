import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeTabGetController extends GetxController {
  CarouselController carouselController = CarouselController();
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void onInit() {
    super.onInit();
  }
}
