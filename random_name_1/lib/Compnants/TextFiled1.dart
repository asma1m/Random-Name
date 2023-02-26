import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_name_1/Compnants/con1.dart';
import 'package:random_name_1/Const/Style.dart';

class TextFild1 extends StatelessWidget {
  TextFild1({super.key, this.controller, this.onPressed, this.cont});
  TextEditingController? controller;
  Function()? onPressed;
  int? cont;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        cont1(
          cont: cont,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
