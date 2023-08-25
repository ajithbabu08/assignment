import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Hotel_Details(),));
}

class Hotel_Details extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
             height: 290,

              decoration: BoxDecoration(
                image:DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/hotelimage.jpg"))),
            ),


          Positioned(
            top: 220,
            left: 20,
            child: Text("LA Marriot\nKochi,Kerala",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),

          Positioned(
            top: 265,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey,
              ),
              
              height: 16,
              width:80,
              child: Text("  9.2/95 reviews",style: TextStyle(color: Colors.white,fontSize: 11),),
            ),
          ),


          SizedBox(height: 620,

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                ),

                SizedBox(width: 5,),
                Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                SizedBox(width: 5,),
                Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                SizedBox(width: 5,),
                Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                SizedBox(width: 5,),
                Icon(FontAwesomeIcons.solidStar,color: Colors.grey,size: 20,),

                SizedBox(width: 170,),
                Text("\$200",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(height: 675,
              child: Row(
                children: [
                  Icon(Icons.location_on,color: Colors.grey),
                  Text("5 km to Lulu Mall",style: TextStyle(color: Colors.grey,fontSize: 12),),

                  SizedBox(width: 170,),

                  Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: Text("/per night",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  )
                ],
              ),
            ),
          ),
          

               Padding(
                 padding: const EdgeInsets.only(top: 355),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            minimumSize: Size(300, 50)
                        ),
                        child: Text("Book Now")),
                   ],
                 ),
               ),
          Padding(
            padding: const EdgeInsets.only(top: 410,left: 5,right: 5),
            child: Container(
              child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text("""LA Marriot\n
  Featuring an outdoor pool, renowned Quan spa, a fitness center and 4 dining options, Kochi Marriott Hotel is located in Edapally, within the Lulu Mall campus. The hotel offers complimentary buggy transfers to the mall.
    
  The cozy and comfortable rooms feature air conditioning, LED TV and a mini-bar. The private bathroom is equipped with bath and shower facilities and complimentary toiletries.
 
  At Kochi Marriott Hotel, guests can make use of concierge services, currency exchange and car rental services. 24-hour front desk services and In room dining available.

  The Museum of Kerala Arts and History is located just 1.2 mi away while the historic town of Fort Kochi is 14 mi from the property. It is 8 kms from Aster Medcity, 8.1 mi from the VPS Lakeshore Hospital and 14 mi from the Cochin International Airport. The hotel is also just 2 kms away from the St. George Forane Church and just 3.1 mi away from the Jawaharlal Nehru Stadium, Kaloor.
  Dining options include Kochi Kitchen, our all day dining that serves Indian, Asian, Italian and Arabic delicacies while Cassava serves authentic regional delights and has been named Asia Pacific’s Top 52 Bars and Restaurants by Marriott Bonvoy. Guests can enjoy a relaxed evening at the Pool Bar serving authentic Indian delicacies or at 10 Degree North, the gentlemen’s bar."""
                    ),
                  )),
            ),
          )

        ],
      ),


    );
  }
}
