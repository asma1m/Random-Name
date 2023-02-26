import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:random_name_1/Controllers/ListOfName.dart';

class FortuneWheelController extends GetxController {
  ListOfName controler = Get.put(ListOfName());
  Rx<int> selected = 0.obs;
  String selsctedName = " ";
  int value = 0;

  SelcetedName() {
    selsctedName = controler.namesController![selected.value].text;
    update();
  }


  @override
  void onClose() {
    selected.close();
    SelcetedName();
    
    super.onClose();
  }
}
