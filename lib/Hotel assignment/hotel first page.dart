import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Hotel_Homepage(),));
}
class Hotel_Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(

            leading: Icon(Icons.menu),
              title: Text("Type your Location"),
              backgroundColor: Colors.cyan,

              bottom: AppBar(backgroundColor: Colors.red,elevation: 0,

                actions: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 10,)
                ],

                title: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),height: 40,width: 70,



         ),

              ),
          ),
          ],
        ),

    );
  }
}
