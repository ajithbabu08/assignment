import 'package:assignment/Tourism%20app/place_details.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: View_Place(),));
}

class View_Place extends StatefulWidget {

  @override
  State<View_Place> createState() => _View_PlaceState();
}

class _View_PlaceState extends State<View_Place> {


  var image=["https://facts.net/wp-content/uploads/2023/07/31-facts-about-alappuzha-1688802937.jpg",
    "https://www.holidify.com/images/bgImages/KOCHI.jpg",
    "https://static.toiimg.com/photo/msid-85515152,width-96,height-65.cms",
    "https://keralakaumudi.com/web-news/en/2021/03/NMAN0228390/image/thrissur-.1.1021545.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Kovalam_beach_trivandrum_kerala.jpg/800px-Kovalam_beach_trivandrum_kerala.jpg",
    "https://pbs.twimg.com/media/ETCync1VAAARJDB.jpg:large"
  ];
  var place=["Alleppey","      Kochi","Munnar","   Thrissur","Kovalam","Wayanad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: false,
              pinned: true,
              title: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("W",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                  Text("Voyager",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                ],
              ),
              leading: Icon(Icons.menu,color: Colors.black,),
              actions: [
                Icon(Icons.location_on,color: Colors.blue,),
                SizedBox(width: 20,)
              ],
              bottom: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,borderRadius: BorderRadius.circular(2)
                  ),
                  width: double.infinity,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search_rounded),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.black,fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Popular Places",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 230,),
                    Text("View All")
                  ],
                ),
              );
            },childCount: 1
            ),
            ),


            SliverGrid(delegate: SliverChildBuilderDelegate((context,index)=>
            Stack(
              children: [
               Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Card(
                child: GestureDetector(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Place_Details()));
                },
                  child: Image.network(image[index],
                    height: 200,width:250,fit: BoxFit.fill,),
                ),
              ),
                 ),
                Positioned(top: 165,left: 120,
                    child: Text(place[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
              ],
            ),childCount: 6
            ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,)),

          ],
        ),
          Positioned(bottom: 10,left: 30,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(350, 40)),
                child: Text("Explore Now")),
          )
    ],
      ),
    );
  }
}
