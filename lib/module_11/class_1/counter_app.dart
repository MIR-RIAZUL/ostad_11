import 'package:flutter/material.dart';

import '../../module_9/class_2_module_9.dart';

class counterApp extends StatefulWidget {
  counterApp({super.key}) {
    print("Counter App");
  }

  @override
  State<counterApp> createState() {
    print("Creating State");
    return _counterAppState();
  }
}

class _counterAppState extends State<counterApp> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    print("Init State");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("Deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Counter App", style: TextStyle(color: Colors.amber)),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(fontSize: 50, color: Colors.teal),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (number > 0) {
                      number--;
                    } else {
                      number = 0; // Prevent negative numbers
                    }
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.black, fontSize: 65),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                    print(number);
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => class2_m9()),
                  );
                },
                child: Text("class2_m9"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
