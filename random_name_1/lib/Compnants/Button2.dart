import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:random_name_1/Const/Style.dart';

class Button2 extends StatelessWidget {
  Button2({super.key, required this.onTap, this.name});

  Function()? onTap;
  String? name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
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
          name!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
