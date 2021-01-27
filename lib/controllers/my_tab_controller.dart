import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MyTabController extends GetxController with SingleGetTickerProviderMixin{
  int indexPage = 1;
  TabController controller;
  
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 4, initialIndex: 1);
    double valueControllerPrevious = 0;
    controller.addListener(() {
      if (valueControllerPrevious != controller.animation.value) {
        // print(controller.animation.value);
        indexPage = controller.index;
        update();
      }
      valueControllerPrevious = controller.animation.value;
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}