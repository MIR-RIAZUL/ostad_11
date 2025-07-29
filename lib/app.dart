import 'package:first/class3.dart';
import 'package:first/module_8/class1.dart';
import 'package:first/module_9/module_9_class3.dart';
import 'package:flutter/material.dart';

import 'module_9/class_2_module_9.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter batch 11',
      initialRoute: '/',
      routes: {
        '/': (context) => class3m9(),
        '/second': (context) =>
            class2_m9(), // Example route, can be replaced with actual second screen
        // Add other routes here if needed
        '/third': (context) => class3(),
        '/fourth': (context) =>
            class1(), // Example route, can be replaced with actual fourth screen
      },
      // home: class3m9(),
    );
  }
}
