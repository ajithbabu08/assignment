import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Place_Details(),));
}

class Place_Details extends StatefulWidget {


  @override
  State<Place_Details> createState() => _Place_DetailsState();
}

class _Place_DetailsState extends State<Place_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 20,right: 10),
          child: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("Venice of the west - Alleppey",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        Icon(Icons.star,color: Colors.amber),
                        SizedBox(width:10,),
                        Text("5.0 Rating")
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Container(height: 70,width: 120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.network("https://facts.net/wp-content/uploads/2023/07/31-facts-about-alappuzha-1688802937.jpg",fit: BoxFit.fill,))
              ],
            ),
          ),
        ),
       

        Padding(
          padding: const EdgeInsets.only(left: 10,top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("About Alleppey",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("""Alleppey is gifted with a unique crisscrossing network of canals that runs throughout the town which allows you to access and explore the entire area while you're relaxing on your houseboat. Luxury glide along the placid backwaters of Alleppey and provide you with a stunning view.""",
          textAlign: TextAlign.justify,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Special Facilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.car,color: Colors.blue,size: 20,),
              SizedBox(width: 5,),
              Text("Parking",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 45,),

              Icon(FontAwesomeIcons.phone,color: Colors.blue,size: 20,),
              SizedBox(width: 5,),
              Text("24*7 Support",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 40,),


              Icon(FontAwesomeIcons.wifi,color: Colors.blue,size: 20,),
              SizedBox(width: 10,),
              Text("Internet",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 30,)
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10),

          child: Container(height: 170,width: 370,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Kovalam_beach_trivandrum_kerala.jpg/800px-Kovalam_beach_trivandrum_kerala.jpg",
            fit: BoxFit.fill,),
          ),
          ),

        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Special Facilities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.hotel,color: Colors.blue,size: 15,),
              SizedBox(width: 5,),
              Text("Accommodation",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 20,),

              Icon(FontAwesomeIcons.fish,color: Colors.blue,size: 20,),
              SizedBox(width: 5,),
              Text("Food",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 20,),


              Icon(Icons.family_restroom_outlined,color: Colors.blue,size: 20,),
              SizedBox(width: 10,),
              Text("Family Friendly",style: TextStyle(color: Colors.blue),),
              SizedBox(width: 30,)
            ],
          ),
        ),
        SizedBox(height: 8,),

        ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(350, 40)),
            child: Text("Explore Now"))
      ],
    ),
    );
  }
}
