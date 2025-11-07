import 'package:flutter/material.dart';

class TopProducts extends StatelessWidget {
  TopProducts({super.key,});
  final List <Map<String , dynamic>> tope =[
    {"image" : "assets/jpg/page1.jpg"},
    {"image" : "assets/jpg/page2.jpg"},
    {"image" : "assets/jpg/page3.jpg"},
    {"image" : "assets/jpg/page4.jpg"},
    {"image" : "assets/jpg/page5.jpg"},
    {"image" : "assets/jpg/page6.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 , crossAxisSpacing: 16 , mainAxisSpacing: 8),
          itemCount: tope.length,
          itemBuilder: (context, index) {
            final tops = tope[index];
            final String image = tops["image"];
            return Container(
              width: 120,
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                ),
              ),
            );
          },)
        );
  }
}