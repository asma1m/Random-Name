import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:random_name_1/Compnants/Button2.dart';
import 'package:random_name_1/Const/Style.dart';
import 'package:random_name_1/Controllers/FortuneWheel.dart';
import 'package:random_name_1/Controllers/ListOfName.dart';

class fortuneWheelPage extends StatelessWidget {
  fortuneWheelPage({super.key});

  ListOfName controler = Get.put(ListOfName());

  FortuneWheelController fortuneWheelController =
      Get.put(FortuneWheelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColoer.onPrimary,
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: AppColoer.backgroundColor,
          ),
          child: Stack(children: [
//------------------------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: IconButton(
                  onPressed: (() {
                    Get.back();
                    controler.RemoveAllElemant();
                  }),
                  icon: Icon(Icons.arrow_back_ios_new)),
            ),

//------------------------------------------------------------------------------

            FortuneWheel(
                selected: fortuneWheelController.selected.stream,
                animateFirst: false,
                indicators: <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    // <-- changing the position of the indicator
                    child: TriangleIndicator(
                      color: AppColoer
                          .onMin, // <-- changing the color of the indicator
                    ),
                  ),
                ],
                onAnimationEnd: () {
                  fortuneWheelController.value =
                      fortuneWheelController.selected.value;

                  print(
                      " -------value indxe = ${fortuneWheelController.value}");
                  print(
                      "teext = ${controler.namesController![fortuneWheelController.selected.value].text}");
                  // controler.items![fortuneWheelController.selected.value];
                  fortuneWheelController.SelcetedName();
                },
                styleStrategy: UniformStyleStrategy(
                    color: AppColoer.backgraund,
                    borderColor: AppColoer.onMin,
                    borderWidth: 5,
                    textStyle: TextStyle(fontSize: 25, color: AppColoer.onMin)),
                items: controler.items!),

//------------------------------------------------------------------------------
            GetBuilder(
                init: FortuneWheelController(),
                builder: ((con) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 130,
                      ),
                      child: Text(
                        "${fortuneWheelController.selsctedName}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                })),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    fortuneWheelController.selected.value =
                        Fortune.randomInt(0, controler.items!.length);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 58,
                    width: 200,
                    decoration: BoxDecoration(
                      color: AppColoer.onMin,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(84, 0, 0, 0),
                          blurRadius: 8,
                          offset: Offset(4, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Text(
                      "Spin",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
