import 'package:flutter/material.dart';

class module8_stack extends StatelessWidget {
  const module8_stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.red),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 25,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    "https://scontent.fdac189-1.fna.fbcdn.net/v/t39.30808-6/497877028_2403832869991141_8963298409974042492_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeFObH63fsKRHqg2qZlGoxywwxm0Gm_cgDnDGbQab9yAOW_dq4Yh0gP7MkxpuXFazuIASzmEUGrsfEmdCMAGWkSE&_nc_ohc=GowmreEds4YQ7kNvwElOCnE&_nc_oc=AdnGvg9B1EAkX6qivxJN7IoJfPg2rZLAgPfaeAxOlGJouj7nsgCXTE3z92qgfYtYOm8&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=axA-Q8wM2KGNpBy9ARSX7Q&oh=00_AfT2kZbYW2UCjRWGq4fpSRkd0TxgboukHflSgarAOSNzWg&oe=6889B825",
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white54, width: 20),
                    ),
                  ),
                ),
              ],
            ),

            Stack(
              children: [
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.red,
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 10),
                  height: 10,
                  width: 200,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Image.network(
                  "https://i.pinimg.com/736x/c4/d5/88/c4d588819944f1f9043c075f9442ae3d.jpg",
                  height: 300,
                  width: double.infinity,
                ),
                Positioned(
                  right: 110,
                  top: 5,
                  child: Text(
                    "bangladesh",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
