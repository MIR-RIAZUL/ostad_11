import 'package:flutter/material.dart';

import '../module_8/class 2.dart';
import '../module_8/stack.dart';

class class3m9 extends StatelessWidget {
  const class3m9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('route navigation')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
            child: Text("class2_m9"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/fourth');
            },
            child: Text("class3"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text("class2_m9"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      module8_stack(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                ),
              );
            },
            child: Text("stack"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => class2()),
              );
            },
            child: const Text("class2_m8"),
          ),
        ],
      ),
    );
  }
}
