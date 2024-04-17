import 'package:flutter/material.dart';

class CustomNavigators {
  
  static goTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
