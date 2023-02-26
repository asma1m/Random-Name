import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_name_1/Const/Style.dart';

class cont1 extends StatelessWidget {
  cont1({super.key, required this.cont});
  int? cont;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColoer.onPrimary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "${cont}",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColoer.onMin2,
        ),
      ),
    );
  }
}
