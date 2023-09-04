import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Farmers_Fresh(),));
}

class Farmers_Fresh extends StatefulWidget {

  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {


  var index=0;
  var rowname=["VEGETABLES","FRUITS","EXOTIC","FRESH CUTS"];

  var Itemname=["Vegetables","Fruits","Exotic","Fresh Cuts","Nutrition Chargers","Packed Flavors"];

  var image=["assets/images/vegtables.jpg",
    "assets/images/mixed-fruits splash.jpeg",
    "assets/images/Kiwi.jpg",
    "assets/images/mango.jpg",
    "assets/images/nutritious.jpg",
    "assets/images/flavors.jpg"];

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

            actions: [
              Icon(Icons.location_on,size: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Kochi"),
              ),
              Icon(Icons.arrow_drop_down_outlined)
            ],
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
                  padding: const EdgeInsets.only(left: 15,top: 5),
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
              padding: const EdgeInsets.only(top: 8,left: 13),
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
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://img.freepik.com/premium-vector/carrot-live-without-you-funny-cute-vegetable-carrot-character-quotes_564312-307.jpg?w=2000")))),
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("assets/images/vegetables_whitebackground_carousel.jpg")))),
            Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1689776529879-8b4772234449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")))),
          ],
              options: CarouselOptions(
                  initialPage: 1,
                  height: 170,

                  aspectRatio: 16/9,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.linear,
                  // enlargeCenterPage: true,
                  // enlargeFactor: .5,
                  scrollDirection: Axis.horizontal
              ),),
        );
      },childCount: 1)),

          
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),

                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.access_alarms_outlined,color: Colors.green,),
                          SizedBox(height: 5,),
                          Text("30 MINS POLICY",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Icon(Icons.phonelink_ring_rounded,color: Colors.green,),
                          SizedBox(height: 5,),
                          Text("TRACEABILITY",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Icon(Icons.local_shipping_outlined,color: Colors.green,),
                          SizedBox(height: 5,),
                          Text("LOCAL SOURCING",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    ],
                  ),
              ),
            );
          },childCount: 1)),


          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [Text("Shop By Category")],
              ),
            );
          },childCount: 1)),

          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) =>
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.white),
                        child: Card(
                          shadowColor: Colors.transparent,
                          child: Image.asset(image[index], height: 95,width: 100,),
                        ),
                      ),
                      Text(Itemname[index])
                    ],
                  ), childCount: 6
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3)),

        ]),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: index,
        onTap: (tappedindex){
          setState(() {
            index=tappedindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: "Account"),
        ],
      ),
    );
  }
}
