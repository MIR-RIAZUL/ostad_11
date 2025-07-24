import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("List view"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red),
              title: Text("RIAZUL ISLAM"),
              subtitle: Text("01516512119"),
            ),
          );
        },
      ),
    );
  }
}
