// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // Widget _Populardeals(){
// //   final List<Map<String,dynamic>> Populardeals=[
// //     {
// //       'image':'assets/Chips.png',
// //       'name' :'Fried Chips',
// //       'price' :'12'
// //     },
// //     {
// //       'image':'assets/Washing_machine.png',
// //       'name':'LG washing machine',
// //       'price':'45,999'
// //     },
// //     {
// //       'image':'assets/Sofa.png',
// //       'name':'Moder Chair',
// //       'price':'3599'
// //     },
// //
// //   ];
// //   return Card(
// //     color: Colors.white,
// //     child: Column(
// //       children: [
// //         Image.asset(
// //           Populardeals[index]['image']!,
// //           fit: BoxFit.cover,
// //         ),
// //         Column(
// //           children: [
// //             Text(Populardeals[index]['name']!,
// //               style: TextStyle(fontSize: 16),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(Populardeals[index]['price']!,
// //                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
// //                   ),
// //                   Row(
// //                     children: [
// //                       Text('4.8',
// //                         style: TextStyle(color: Colors.pinkAccent),
// //                       ),
// //                       Icon(Icons.star,color: Colors.orange,)
// //                     ],
// //                   )
// //                 ],
// //               ),
// //             ),
// //             ElevatedButton(onPressed: (){},
// //                 style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.white,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                       side: BorderSide(color: Colors.yellow,width: 1),
// //                     )
// //                 ),
// //                 child: Text('Add to Cart',style: TextStyle(color: Colors.yellow),))
// //           ],
// //         )
// //
// //       ],
// //     ),
// //   );
// // }



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
