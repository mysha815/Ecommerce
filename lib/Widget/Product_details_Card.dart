import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Cart_Provider.dart';

Widget ProductDetailsCard({
  required String image,
  required String title,
  required String price,
}) {
  return Builder(
    builder: (context) => Column(
      children: [
        Center(
          child: Container(
            height: 450,
            width: double.infinity,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 320,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                ListTile(
                  title: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '500ml',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      FilledButton(
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .addItem(image, title, price);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("$title added to cart"),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Add To Cart'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Amla'),
            ],
          ),
        )
      ],
    ),
  );
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../Cart_Provider.dart';
//
// Widget ProductDetailsCard(
//     { required String image, required  String title, required  String price}
//     ) {
//   return Column(
//     children: [
//       Center(
//         child: Container(
//           height: 450,
//           width: double.infinity,
//           margin: EdgeInsets.all(12),
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300)),
//           child: Column(
//             children: [
//               Image.asset(
//                 image,
//                 height: 320,
//                 width: double.infinity,
//                 fit: BoxFit.contain,
//               ),
//               ListTile(
//                 title: Text(
//                   title,
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           '500ml',
//                           style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 12),
//                         ),
//                         Text(
//                           price,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20),
//                         ),
//                       ],
//                     ),
//                     FilledButton(
//                         onPressed: () {
//                           Provider.of<CartProvider>(context, listen: false)
//                               .addItem(image, title, price);
//                         },
//                         style: FilledButton.styleFrom(
//                           backgroundColor: Colors.green,
//                         ),
//                         child: Text('Add To cart')),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: double.infinity,
//         margin: EdgeInsets.all(12),
//         padding: EdgeInsets.all(12),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.grey.shade300)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Description',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text('Amla'),
//           ],
//         ),
//       )
//     ],
//   );
// }
