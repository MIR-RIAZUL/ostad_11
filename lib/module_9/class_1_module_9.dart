import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (builder) => AlertDialog(
          title: Text("Alert Dialog"),
          content: Text('are you sure'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("submit")),
          ],
        ),
      );
    }

    void ShowAlertDialogWithIcons(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('instraletion block'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.red),
                  SizedBox(width: 10),
                  Text("warning"),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "hgiufdsgkfbnfvuishfgasuhf8shfjkdshvyiudshfjkdshudshjkdveshfjsefh8e",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    }

    void ShowSimpleDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text("simple dialog"),
          children: [
            SimpleDialogOption(child: Text("option 1")),
            SimpleDialogOption(child: TextField()),
          ],
        ),
      );
    }

    void ShowBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  "chose option",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListTile(title: Text("option 1")),
                ListTile(
                  title: Text("option 2"),
                  onTap: () {},
                  onLongPress: () {},
                ),
                // ListTile(title: Text("option 3")),
                // ListTile(title: Text("option 4")),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.grey, width: 70, height: 100),
              ),
              SizedBox(height: 20),

              Container(
                color: Colors.grey,
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.2,
              ),
              Text(
                "this text for testing screensize",
                style: TextStyle(
                  fontSize: screenSize.width * 0.05,
                  height: screenSize.height * 0.009,
                  color: Colors.blueGrey,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  showAlertDialog();
                },
                child: Text("alert dialog"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  ShowAlertDialogWithIcons(context);
                },
                child: Text("Alewrt with icons"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  ShowSimpleDialog(context);
                },
                child: Text("simple dialog"),
              ),

              ElevatedButton(
                onPressed: () {
                  ShowBottomSheet();
                },
                child: Text("bottom sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
