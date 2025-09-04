// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// Widget _Populardeals(){
//   final List<Map<String,dynamic>> Populardeals=[
//     {
//       'image':'assets/Chips.png',
//       'name' :'Fried Chips',
//       'price' :'12'
//     },
//     {
//       'image':'assets/Washing_machine.png',
//       'name':'LG washing machine',
//       'price':'45,999'
//     },
//     {
//       'image':'assets/Sofa.png',
//       'name':'Moder Chair',
//       'price':'3599'
//     },
//
//   ];
//   return Card(
//     color: Colors.white,
//     child: Column(
//       children: [
//         Image.asset(
//           Populardeals[index]['image']!,
//           fit: BoxFit.cover,
//         ),
//         Column(
//           children: [
//             Text(Populardeals[index]['name']!,
//               style: TextStyle(fontSize: 16),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(Populardeals[index]['price']!,
//                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
//                   ),
//                   Row(
//                     children: [
//                       Text('4.8',
//                         style: TextStyle(color: Colors.pinkAccent),
//                       ),
//                       Icon(Icons.star,color: Colors.orange,)
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             ElevatedButton(onPressed: (){},
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       side: BorderSide(color: Colors.yellow,width: 1),
//                     )
//                 ),
//                 child: Text('Add to Cart',style: TextStyle(color: Colors.yellow),))
//           ],
//         )
//
//       ],
//     ),
//   );
// }