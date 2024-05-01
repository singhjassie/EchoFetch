import 'package:echofetch/features/shared/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update the current page index when Page Scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // Update the current page on dotClick
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update the current screen on next button click
  void nextPage() {
    if (currentPageIndex == 2) {
      Get.to(WelcomeScreen());
    } else {
      int index = currentPageIndex.value + 1;
      currentPageIndex.value = index;
      pageController.jumpToPage(index);
    }
  }

  void skipPage() {
    Get.to(WelcomeScreen());
  }
}
