

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColoer {
  
  static Color onPrimary = Color(0xFFFBEAD9);
  static Color backgraund =Color(0xFFFDB97F);
  static Color onMin =Color(0xFF423341);
  static Color onMin2 =Color(0xFFF46B41);

  static LinearGradient backgroundColor = LinearGradient(
    
    begin: Alignment.centerRight,
    end: Alignment.bottomLeft,
    
    colors: [
      onPrimary,
      backgraund,
    ],
  );
}
