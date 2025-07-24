import 'package:flutter/material.dart';

class class2 extends StatelessWidget {
  class2({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontrollor = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("module 8 class 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://i.pinimg.com/736x/89/13/ab/8913abfbb3ac16038f8b7895865afbfb.jpg',

              height: 250,
              width: 250,
            ),
            SizedBox(height: 20),

            //Image.asset('asset/tow.jpeg', height: 150, width: 250),
            SizedBox(height: 20),

            Text(
              "Login with phone and password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phonecontrollor,
                      decoration: InputDecoration(
                        hintText: "phone number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your phone number";
                        } else if (value.length != 11) {
                          return "phone number must be 11 digits";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your password";
                        } else if (value.length < 6) {
                          return "password must be at least 6 digits";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Log in succesfully")),
                          );
                        }
                      },
                      child: Text("submit"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
