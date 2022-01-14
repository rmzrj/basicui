import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/color.dart';


class Home extends StatelessWidget {
  

  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomNavbar(),
      backgroundColor: Colors.black,
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kPrimry.withOpacity(.15),
              kSecndry.withOpacity(.15),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return const Padding(
              padding: EdgeInsets.all(18.0),
              child: Card(
                color: Colors.transparent,
                child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Text('Heloo',style: TextStyle(color: Colors.white),),
              ),),
            );
          },
         ),
      ),
      
    );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: BottomNavigationBar( 
          iconSize: 28,
          elevation: 0,         
          backgroundColor: Colors.white.withOpacity(.02),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.white,),
              label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.picture_in_picture,color: Colors.white,),
              label: 'Browse',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.list,color: Colors.white,),
              label: 'My List',
              ),
          ],
          selectedLabelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w100),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w100),

  ),
      ),
    );
  }
}