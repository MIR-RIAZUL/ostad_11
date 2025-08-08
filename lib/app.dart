import 'package:first/class3.dart';
import 'package:first/module_8/class1.dart';
import 'package:flutter/material.dart';

import 'module_11/class_1/counter_app.dart';
import 'module_9/class_2_module_9.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter batch 11',
      initialRoute: '/counterApp',
      routes: {
        '/counterApp': (context) => counterApp(),
        '/second': (context) => class2_m9(),
        '/third': (context) => class3(),
        '/fourth': (context) => class1(),
      },
      // home: class3m9(),
    );
  }
}
