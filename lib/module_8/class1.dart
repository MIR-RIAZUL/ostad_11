import 'package:flutter/material.dart';

class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontrollor = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("module 8 class 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 5, 5),
            child: TextField(
              keyboardType:TextInputType.phone,
              controller: phonecontrollor,
              decoration: InputDecoration(
                filled: true,
                hintText: "enter your number:",
                labelText: "phone number",
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),

                hintStyle: TextStyle(color: Colors.pink, fontSize: 15),
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 1, 5, 1),
            child: TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(

                filled: true,
                focusColor: Colors.blue,
                hintText: "enter your password:",
                labelText: "password",
                prefixIcon: Icon(Icons.login),
                suffixIcon: Icon(Icons.remove_red_eye_outlined  ),

                hintStyle: TextStyle(color: Colors.pink, fontSize: 15),
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),


          SizedBox(
            width: 150,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                if(phonecontrollor.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("enter your phone number"))
                  );
                }
                else if(phonecontrollor.text.length < 11)
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("enter valid phone number"))
                  );

                }
                else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(phonecontrollor.text)),
                    );
                  }


              },
              child: Text(
                "submit",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
