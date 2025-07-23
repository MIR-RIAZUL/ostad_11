import 'package:flutter/material.dart';

class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontrollor=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("module 8 class 1"),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 5, 5),
            child: TextField(
              controller: phonecontrollor,
              decoration: InputDecoration(
                hintText: "enter your number:",
                labelText: "phone number",
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),

                hintStyle: TextStyle(
                  color: Colors.pink,
                  fontSize: 15,
                ),
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),


              )
            ),
          ),
        ],
      ),

    );
  }
}
