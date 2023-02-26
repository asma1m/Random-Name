import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_name_1/Const/Style.dart';

class BottonText1 extends StatelessWidget {
  BottonText1({super.key, required this.onPressed, required this.tixt});
  Function() onPressed;
  String? tixt;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
        onPressed: onPressed,
        child: Text(tixt!,
            style: TextStyle(
              color: AppColoer.backgraund,
            )));
  }
}
