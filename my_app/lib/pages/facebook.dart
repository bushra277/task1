import 'package:flutter/material.dart';
import 'package:my_app/pages/facebookstory.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook' , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 35),),
        actions: [
          Icon(Icons.add_circle , size: 35,),
          SizedBox(width: 8,),
          Icon(Icons.search , size: 35,),
          SizedBox(width: 8,),
          Icon(Icons.message , size: 35,)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.home , color: Colors.blue, size: 35,)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.ondemand_video , size: 35,)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.people , size: 35,)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.storefront , size: 35,)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.notifications , size: 35,)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.menu , size: 35,))
               ],
              ),
              Divider(thickness: 1,),
            ],
          ),
          ),

      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                CircleAvatar(backgroundImage: AssetImage('assets/jpg/imagePro.jpg'), radius: 25,),
                SizedBox(width: 20,),
                Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 195, 194, 194)),
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Center(child: Text('Whats on your mind?')),
                  ),
                Spacer(),
                Icon(Icons.image , size: 35, color: Colors.green,)
              ],),
              Divider(thickness: 4, color: const Color.fromARGB(255, 195, 194, 194),),
              FacebookStory(),
              Divider(thickness: 4, color: const Color.fromARGB(255, 195, 194, 194),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  padding: EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 4 , color: Colors.blue)
                  ),
                  child: CircleAvatar(backgroundImage: AssetImage('assets/jpg/image99.jpg'),),
                ),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Jordan Public Security - مديرية' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                  //SizedBox(height: 4,),
                  Row(children: [
                    Icon(Icons.more_horiz , size: 18,),
                    SizedBox(width: 2,),
                    Icon(Icons.check_circle , color: Colors.blue, size: 18,)
                  ],),
                  //SizedBox(height: 4,),
                  Row(children: [
                    Text('Reels . 14m .' , style: TextStyle(color: const Color.fromARGB(255, 128, 127, 127) , fontSize: 14),),
                    SizedBox(width: 2,),
                    Icon(Icons.settings , color: Colors.grey, size: 14,)
                  ],)
                ],),
                Spacer(),
                Icon(Icons.more_horiz , color: Colors.grey , size: 30,),
                SizedBox(width: 8,),
                Icon(Icons.close , color: Colors.grey, size: 30,)
              ],),
              SizedBox(height: 8,),
              Text('معلومة بسيطة .. أنت بتستهين فيها .. بس بتكلفك مبلغ كبير.. تابع الفيديو و افهم القصة... See more' ,
              maxLines: 2,
              ),
              SizedBox(height: 8,),
              Image(image: AssetImage('assets/jpg/image100.jpg'))
            ],
          ),
        ),
    );
  }
}

