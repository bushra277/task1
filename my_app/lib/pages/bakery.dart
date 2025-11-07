import 'package:flutter/material.dart';
import 'package:my_app/pages/topproducts.dart';



class Bakery extends StatelessWidget {
  const Bakery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/jpg/mainPage.jpg'),
              fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: 18,),
          Center(child: Text('Top Products' , 
          style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic , fontFamily: 'Sansita Swashed'),)),
          Spacer(),
          TopProducts(),
        ],
      ),
    );
  }
}