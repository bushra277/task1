import 'package:flutter/material.dart';

class FacebookStory extends StatelessWidget {
  FacebookStory({super.key});

  final List<Map<String, dynamic>> story = [
    {"image": 'assets/jpg/image21.jpg', "title": 'Your Story', "type": 'create'},
    {"image": 'assets/jpg/image22.jpg', "title": 'Farah', "type": 'normal'},
    {"image": 'assets/jpg/image23.jpg', "title": 'Mohammed', "type": 'live'},
    {"image": 'assets/jpg/image24.jpg', "title": 'Rana', "type": 'normal'},
    {"image": 'assets/jpg/image25.jpg', "title": 'Marah', "type": 'live'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: story.length,
          itemBuilder: (context, index) {
            final storys = story[index];
            final String label = storys["title"];
            final String type = storys["type"];
            final String image = storys["image"];
      
            return Stack(
              children: [
                // خلفية الصورة
                Container(
                  width: 120,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
      
                // الاسم تحت
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    color: Colors.black54,
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
      
                // حسب نوع القصة (create / live / normal)
                if (type == "create")
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add, color: Colors.white, size: 18),
                    ),
                  )
                else if (type == "live")
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "LIVE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                else if (type == "normal")
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage("assets/jpg/imagePro.jpg"), // تقدر تخليها متغيرة
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
