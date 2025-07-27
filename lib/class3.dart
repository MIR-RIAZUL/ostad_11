import 'package:flutter/material.dart';

class class3 extends StatelessWidget {
  const class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlueAccent[200],
      //backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),
      backgroundColor: Colors.lightBlueAccent.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("App Bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {
                print("click");
              },
              child: Text("submit"),
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 40,
              // width: 100,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  print("click");
                },
                child: Text("submit"),
              ),
            ),

            SizedBox(height: 20),

            OutlinedButton(onPressed: () {}, child: Text("Share")),

            TextButton(
              onPressed: () {},
              child: Text(
                "TAB",
                style: TextStyle(color: Colors.black54, fontSize: 30),
              ),
            ),
            Icon(Icons.phone, size: 50, color: Colors.red),
            IconButton(
              onPressed: () {
                print("deleted");
              },
              icon: Icon(Icons.delete, size: 50, color: Colors.red),
            ),

            GestureDetector(
              onTap: () {
                print("tapped on Gesture decetor");
              },
              child: Text(
                "tap area",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),

            SizedBox(height: 20),

            InkWell(
              onTap: () {
                print("tapped on inkwell");
              },
              child: Text(
                "inkwell",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),

            Padding(
              // padding: EdgeInsets.all(50),
              // padding: EdgeInsets.only(left: 50,right:20,top: 50,bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),

              child: Text(
                "this is for padding",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
