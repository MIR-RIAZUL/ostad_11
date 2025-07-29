import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
