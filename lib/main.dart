import 'package:flutter/material.dart';
import 'package:lect1/DisplayMenu.dart';
import 'package:lect1/Loginnew.dart';
import 'package:lect1/drawerMenu.dart';
import 'package:lect1/lect1.dart';
import 'package:lect1/menubottom.dart';
import 'package:lect1/popupmenuItem.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drawerMenu(),
    );
  }
}
