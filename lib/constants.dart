import 'package:flutter/material.dart';

void moveScreen(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
