import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Payment_Ui(),));
}

class Payment_Ui extends StatelessWidget {



  var iconname=[
    Icon(Icons.account_balance_rounded,color: Colors.red,),
    Icon(Icons.e_mobiledata_rounded,color: Colors.red,),
    Icon(Icons.payment,color: Colors.red,),
    Icon(Icons.attach_money,color: Colors.red,),
    Icon(Icons.timer_outlined,color: Colors.red,),
    Icon(Icons.qr_code,color: Colors.red,),
  ];

  var icontext=["My Account","Load eSewa","Payment","Fund Transfer","Schedule Payment","Scan To Pay"];

  var Tdate=["8-08-2023","6-08-2023","1-08-2023","25-07-2023",];
  var INR=["10000","20000","1000","3000"];

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
                Container(height: 140,color: Colors.white),
                Container(height: 70,color: Colors.red),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    height: 120,width:440,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(minRadius: 40,
                          backgroundImage:
                          NetworkImage("https://images.unsplash.com/photo-1608649443926-1e224443ef88?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aGlkZGVuJTIwbWFuJTIwZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ajith Babu",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Text("INR. 1,50,000",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                SizedBox(width: 5,),
                                Icon(Icons.remove_red_eye,size: 20,),
                              ],
                            ),
                            Text("938227479292922",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
            ))
              ],
            );
          },childCount: 1
          ),
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Icon(Icons.stars_rounded,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("WOULD YOU LIKE TO?",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            );
          },childCount: 1)),



         SliverGrid(
          delegate: SliverChildBuilderDelegate((context,index)=>
            Card(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    iconname[index],
                    Text(icontext[index],style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ), childCount: 6,
              ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),),



          SliverList(
              delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.stars_rounded,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("LAST TRANSACTIONS",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,)
                ],
              ),
            );
          },childCount: 1)),

          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Expanded(

               child: Card(
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Container( width: 10,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                            color: Colors.red,),
                        ),

                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('CWDR/',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text('976425/5655616897',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text(Tdate[index],style: TextStyle(fontSize: 10),),
                            SizedBox(height: 20,)
                          ],
                        ),
                        SizedBox(width: 150,),
                        Text('INR. ${INR[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                      ],
                    ),
                  ),
                )
            );
          },childCount: 4))
    ],)
    );
  }
}