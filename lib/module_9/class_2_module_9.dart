import 'package:flutter/material.dart';

class class2_m9 extends StatelessWidget {
  const class2_m9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 2 Module 9"),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,

                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/de/f1/f3/def1f3321c7340363d5e60657d4aef59.jpg",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mir Riazul Islam",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "mirirazul859@gmail.com",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(dense: true, title: Text("HOME"), onTap: () {}),
            Divider(color: Colors.blueGrey, thickness: 1),
            ListTile(
              visualDensity: (VisualDensity.compact),
              title: Text("PROFILE"),
              onTap: () {},
            ),
            Divider(color: Colors.blueGrey, thickness: 1),
            ListTile(
              visualDensity: VisualDensity.comfortable,
              title: Text("SETTINGS"),
              onTap: () {},
            ),
            Divider(color: Colors.blueGrey, thickness: 1),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text("LOGOUT"),
              onTap: () {},
            ),
            Divider(color: Colors.blueGrey, thickness: 1),
          ],
        ),
      ),
    );
  }
}
