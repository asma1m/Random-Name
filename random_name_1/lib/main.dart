import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_name_1/Viwe/AddNamePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddNamePage(),
    );
  }
}
