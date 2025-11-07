import 'package:flutter/material.dart';

class SupBakery extends StatelessWidget {
  const SupBakery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
          width: MediaQuery.sizeOf(context).width,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/jpg/imageA.jpg'), 
            fit: BoxFit.cover)
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('20 % Off Your \n First Order' , 
              style: TextStyle(fontSize: 35 , fontFamily: 'Sansita Swashed' , color: Colors.white),),
              SizedBox(height: 8,),
              Text('Suspendisse ac rhoncus \n nisl, eu tempor urna. Curabitur \n vel bibenjgg.',
              style: TextStyle(fontSize: 10 , color: Colors.white),),
              SizedBox(height: 26,),
              Container(
                width: 120,
                height: 38,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 41, 14)
                ),
                child: Center(child: Text('Learn More' , style: TextStyle(fontSize: 16 , color: Colors.white),)),
              ),
            ],),
          ),
         ),
         SizedBox(height: 30,),
         Text('Explore More' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , fontFamily: 'Sansita Swashed'),),
         SizedBox(height: 30,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cake' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('Muffins' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('Croissant' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('Bread' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('Tart' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text('Favorite' , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
         ],),
         Divider(color: const Color.fromARGB(255, 192, 188, 188),),
        ],
      ),
    );
  }
}