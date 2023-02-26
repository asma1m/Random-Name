import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_name_1/Const/Style.dart';

showMessage(
    {required BuildContext context, String? randomName, String? image}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        insetPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        content: Container(
          height: 200,
          width: 200,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    image!,
                    color: AppColoer.onMin2,
                  ),
                ),
                Text(
                  randomName!,
                  textAlign: TextAlign.center,
                ),
              ]),
        ),
      );
    },
  );
}
