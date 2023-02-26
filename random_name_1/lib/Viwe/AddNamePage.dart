import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:random_name_1/Compnants/Button2.dart';
import 'package:random_name_1/Compnants/ButtonStart1.dart';
import 'package:random_name_1/Compnants/botton1.dart';
import 'package:random_name_1/Compnants/showMessage.dart';
import 'package:random_name_1/Const/Style.dart';
import 'package:random_name_1/Controllers/ListOfName.dart';
import 'package:random_name_1/Viwe/fortuneWheelPage.dart';

class AddNamePage extends StatelessWidget {
  AddNamePage({super.key});
  ListOfName controler = Get.put(ListOfName(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: Get.height,
          width: Get.width,
          child: Image.asset(
            "images/home page.png",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 92,
            ),
            Text(
              "    Random \n         Name..",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 30,
            ),
            GetBuilder<ListOfName>(
                init: ListOfName(),
                builder: (controller) {
                  return Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: Get.height / 1.3,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(70))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //---------------------------------------------------------------------
                        Container(
                          height: Get.height / 2,
                          width: Get.width,
                          child: ListView(children: [
                            Column(
                              children: controller.names!,
                            ),

                            //---------------------------------------------------------------------

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BottonText1(
                                    onPressed: () {
                                      controler.AddName();
                                      print(controler.names!.length);
                                    },
                                    tixt: "Add Name"),
                                BottonText1(
                                    onPressed: () {
                                      controler.RemoveNAme();
                                      print(controler.names!.length);
                                    },
                                    tixt: "Remove Name"),
                              ],
                            )
                          ]),
                        ),
                        //-----------------------------------------------------------------------
                        SizedBox(
                          height: 100,
                        ),
                        Align(
                            child: InkWell(
                          onTap: () {
                            if (controler.names!.length < 2) {
                              showMessage(
                                  context: context,
                                  randomName:
                                      "You must add at least two names!",
                                  image: "images/exclamation.png"
                                  // "${controller.namesController![Random().nextInt(controller.namesController!.length)].text}"
                                  );
                            } else {
                              Get.to(fortuneWheelPage());
                              controler.ItemwList();
                            }
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
                              "Start",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                      ],
                    ),
                  );
                })
          ],
        )
      ]),
    );
  }
}
