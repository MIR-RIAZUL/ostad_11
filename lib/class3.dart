
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
        title: Text("app bar"),
        centerTitle:true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: (){ print("click");

              }, child: Text("submit")),

            SizedBox(height: 20,),

            SizedBox(
              height: 40,
              // width: 100,
              width: double.infinity,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: (){ print("click");

                  }, child: Text("submit")),
            ),

            SizedBox(height: 20,),

            OutlinedButton(onPressed: (){}, child: Text("Share")),

            TextButton(onPressed: (){}, child: Text("TAB",style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
            ) )),
            Icon(Icons.phone,
            size: 50,
            color: Colors.red,),
            IconButton(onPressed: (){
              print("deleted");
            }, icon: Icon(Icons.delete,
            size: 50,
            color: Colors.red,))


          ]
        ),
      ),

    );
  }

}
