import 'package:flutter/cupertino.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:random_name_1/Compnants/TextFiled1.dart';

class ListOfName extends GetxController {
  List<Widget>? names = [];
  List<TextEditingController>? namesController = [];
  int cont = 1;
  List<FortuneItem>? items = [];
  //var rendomval = Fortune.randomInt(0, items!.length);

  // update shode be in function

  AddName() {
    namesController!.add(TextEditingController());
    names!.add(
      TextFild1(
        cont: cont,
        controller: namesController!.last,
      ),
    );

    cont++;
    update();
  }

  RemoveNAme() {
    names!.removeLast();
    namesController!.removeLast();
    cont--;
    update();
  }

  RemoveAllElemant() {
    names!.clear();
    namesController!.clear();
    items!.clear();
    cont = 1;
    update();
  }

  ItemwList() {
    for (var i in namesController!) {
      print("p1");
      items!.add(
        FortuneItem(child: Text("${i.text}")),
      );
    }
    print("p2");
    print(namesController!);
    update();
  }

  onInit() {
    AddName();
  }

  @override
  void onReady() {
    RemoveNAme();
    ItemwList();
    super.onReady();
  }
}
