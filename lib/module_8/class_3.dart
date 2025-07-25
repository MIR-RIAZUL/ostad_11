import 'package:flutter/material.dart';

class module8class3 extends StatelessWidget {
  const module8class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grided View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children:
      //       // Container(
      //       //   color: Colors.teal,
      //       //   child: Center(
      //       //     child: Text(
      //       //       "1",
      //       //       style: TextStyle(fontSize: 30, color: Colors.white),
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.blueAccent,
      //       //   child: Center(
      //       //     child: Text(
      //       //       "1",
      //       //       style: TextStyle(fontSize: 30, color: Colors.white),
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.lightBlue,
      //       //   child: Center(
      //       //     child: Text(
      //       //       "1",
      //       //       style: TextStyle(fontSize: 30, color: Colors.white),
      //       //     ),
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.indigo,
      //       //   child: Center(
      //       //     child: Text(
      //       //       "1",
      //       //       style: TextStyle(fontSize: 30, color: Colors.white),
      //       //     ),
      //       //   ),
      //       // ),
      //       List.generate(10, (index) {
      //         return Card(
      //           elevation: 10,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           color: Colors.red,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(Icons.phone, size: 50, color: Colors.white),
      //               SizedBox(height: 10),
      //               Text(
      //                 'cash out',
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   color: Colors.white,
      //                   height: 1.5,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       }),
      // ),,,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: 50, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  index.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
