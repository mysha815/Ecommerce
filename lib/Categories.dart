import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Fruits items/Graps.png',
      'title': 'Graps',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Juice_Mineral/7up.JPG',
      'title': '7up',
      'color': Colors.green,
    },
    {
      'image': 'assets/Juice_Mineral/anarosh_juice.JPG',
      'title': 'Pineapple juice',
      'color': Colors.yellow
    },
    {
      'image': 'assets/Juice_Mineral/apple_juice.JPG',
      'title': 'Apple juice',
      'color': Colors.orangeAccent,
    },
    {
      'image': 'assets/Juice_Mineral/berry_juice.JPG',
      'title': 'Berry juice',
      'color': Colors.brown,
    }
  ];
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return buildCategory(
                      image: categories[index]['image']!,
                      title: categories[index]['title']!,
                      color:categories[index]['color']!
                  );
                }),



          ],
        ),
      ),
    );
  }
}

Widget buildCategory(
    {required String image, required String title, required  Color color}) {
  return Column(
    children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
          ),
          Positioned(
           right: -20,
            top: 5,
            child: Image.asset(
              image,
              width: 70,
              height: 70,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      )
    ],
  );
}
