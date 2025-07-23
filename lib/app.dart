import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'class3.dart';
import 'home.dart';
import 'module_8/class1.dart';


class MyApp extends StatelessWidget{

  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'flutter batch 11',
      home:class1(),
    );
  }
}