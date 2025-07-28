import 'package:flutter/material.dart';

import '../module_8/class_3.dart';
import '../module_8/stack.dart';
import 'class_1_module_9.dart';

class class2_m9 extends StatelessWidget {
  const class2_m9({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Class 2 Module 9"),
          backgroundColor: Colors.blueGrey,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "home",
                icon: Icon(Icons.home, color: Colors.white),
              ),
              Tab(
                text: "settings",
                icon: Icon(Icons.settings, color: Colors.white),
              ),

              Tab(
                text: "fav",
                icon: Icon(Icons.favorite, color: Colors.white),
              ),
            ],
          ),
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
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "mirirazul859@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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

        body: TabBarView(
          children: [
            // Container(
            //   height: 20,
            //   color: Colors.brown,
            //   child: Center(
            //     child: Text(
            //       'Home',
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 20,
            //   color: Colors.lightBlue,
            //   child: Center(
            //     child: Text(
            //       'Settings',
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 20,
            //   color: Colors.green,
            //   child: Center(
            //     child: Text(
            //       'Favorites',
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            Alert(),
            module8_stack(),
            module8class3(),
          ],
        ),
      ),
    );
  }
}
