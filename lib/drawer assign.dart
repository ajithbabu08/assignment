import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Drawer_Assign(),));
}

class Drawer_Assign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

drawer: Drawer(
     child: Container(
     decoration: BoxDecoration(  gradient: LinearGradient(
       begin: Alignment.topRight,
       end: Alignment.bottomRight,
       colors: [Colors.pink, Colors.orange],
     ),
     ),

      child: ListView(
        children: [
         SizedBox(
           width: 100,
           height: 20,
         ),
          ListTile(
            title: Text("Ajith"),
            subtitle: Text("ajith@gmail.com"),
            trailing: Icon(Icons.close),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/apple.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
          ),
          SizedBox(
            width: 100,
            height: 20,
          ),
        ],
      ),
      ),
),
    );
  }
}
