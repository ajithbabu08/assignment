import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Farmers_Fresh(),));
}

class Farmers_Fresh extends StatefulWidget {

  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {



  var rowname=["VEGETABLES","FRUITS","EXOTIC","FRESH CUTS"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            title: Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold),),

            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: double.infinity,
                height: 30,

                child: Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 7,top: 7),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded,size: 20,),
                      hintText: "Search for Vegetables, Fruits ..",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 15,),
                    ),
                  ),
                ),
              ),
            ),
          ),


          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 8,left: 3),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                    width: 90,height: 25,child: Center(child: Text("VEGETABLES",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                  SizedBox(width: 5,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                    width: 80,height: 25,child: Center(child: Text("FRUITS",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                  SizedBox(width: 5,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                    width: 80,height: 25,child: Center(child: Text("EXOTIC",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                  SizedBox(width: 5,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                    width: 90,height: 25,child: Center(child: Text("FRESH CUTS",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                ],
              ),
            );
          },childCount: 1
          ),
    ),

      SliverList(delegate: SliverChildBuilderDelegate((context,index){
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CarouselSlider(items: [
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1691084126270-bd85224539ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1926&q=80")))),
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1690398252262-6359056cf1b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")))),
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1689776529879-8b4772234449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")))),
          ],
              options: CarouselOptions(
                  initialPage: 0,
                  height: 170,

                  aspectRatio: 16/9,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.linear,
                  // enlargeCenterPage: true,
                  // enlargeFactor: .5,
                  scrollDirection: Axis.horizontal
              ),),
        );
      },childCount: 1)),

          
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(color: Colors.blue,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.access_alarms_outlined,color: Colors.green,),
                        Text("30 mins policy",style: TextStyle(color: Colors.green),),

                        Icon(Icons.access_alarms_outlined,color: Colors.green,),
                        Text("30 mins policy",style: TextStyle(color: Colors.green),),

                        Icon(Icons.access_alarms_outlined,color: Colors.green,),
                        Text("30 mins policy",style: TextStyle(color: Colors.green),),

                      ],
                    ),
                  ],
                ),
              ),
            );
          },childCount: 1))

        ]),
    );
  }
}
