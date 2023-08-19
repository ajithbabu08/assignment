import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Music_Player(),));
}

class Music_Player extends StatefulWidget {
  @override
  State<Music_Player> createState() => _Music_PlayerState();
}

class _Music_PlayerState extends State<Music_Player> {

  var index=0;

  var image = [
    "https://i.scdn.co/image/ab67616d00001e026686e1c284707576239d78b9",
    "https://c.saavncdn.com/470/Arijit-Singh-All-Time-Hits-Hindi-2023-20230515203522-500x500.jpg",
    "https://i.scdn.co/image/ab67616d0000b273b9a5de246deb9e8de7f02ca4",
    "https://i.scdn.co/image/ab67616d0000b273de35962bc16de27efafb5caf",
    "https://i.scdn.co/image/ab67616d00001e020b9c6d3934ef0f6d9ca411cd",
    "https://i.scdn.co/image/ab67616d00001e021edf696a64afb583b45e0f93",
    "https://i.scdn.co/image/ab67616d00001e023bfc2617fdd1ff939930ce0e",
    "https://i.scdn.co/image/ab67706f00000002c05479830da0b22a09673a7a",
    "https://i.scdn.co/image/ab67706f00000002b5e73f956d3ea05493366e96",
    "https://i.scdn.co/image/ab67616d0000b27315630d6ae4380c5bee71a9cd",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.black,
            floating: true,
            pinned: false,
            title: const Center(child: Text("Playlists", style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold),)),
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(

                decoration: BoxDecoration(color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                height: 40,


                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.search, color: Colors.pink,)
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) =>
                  Container(
                    decoration: BoxDecoration(color: Colors.black),

                    child: Card(
                      shadowColor: Colors.transparent,
                      child: Image.network(image[index], fit: BoxFit.cover,),
                    ),
                  ), childCount: 10
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2)),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (tappedindex){
          setState(() {
            index=tappedindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Playlist"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: "More")
        ],
      ),
    );

  }
}
