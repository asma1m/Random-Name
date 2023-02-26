import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButonStart1 extends StatelessWidget {
  ButonStart1({super.key, this.text, this.onTap});
  String? text;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(text!),
      onPressed: () {
        onTap!;
      },
    );
  }
}
