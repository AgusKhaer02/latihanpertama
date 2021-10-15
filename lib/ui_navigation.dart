import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihanpertama/pages/destination.dart';
import 'package:latihanpertama/pages/gallery.dart';
import 'package:latihanpertama/pages/profile.dart';
import 'package:latihanpertama/pages/settings.dart';

class UINavigation extends StatelessWidget {
  const UINavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // alt + enter = wrapping widgets
              GestureDetector(
                onTap: (){
                  print("Anda sudah berada di home");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.purple,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),


              GestureDetector(
                onTap: (){
                  // pindah halaman ke destination
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Destination()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.send,
                      color: Colors.purple,
                    ),
                    Text(
                      "Destination",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),


              GestureDetector(
                onTap: (){
                  // pindah halaman ke gallery
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Gallery()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.purple,
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),


              GestureDetector(
                onTap: (){
                  // pindah halaman ke settings
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.purple,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  // pindah halaman ke settings
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
