import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Payment_Ui(),));
}

class Payment_Ui extends StatelessWidget {
  const Payment_Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("Welcome! MAUSAM")),
      actions: [
        Icon(Icons.qr_code),
        SizedBox(width: 15,)
      ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Stack(
              children: [
                Container(
                  height: 10,width: 10,
                )
              ],
            );
          }))
        ],
      ),
    );
  }
}
