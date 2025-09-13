import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ProductsCard (
    {required String image,required String title,required String price}
    ){
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                width: 80,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),


          ListTile(
            title: Text(
              price,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          FilledButton(onPressed: (){},
              style: FilledButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Add to Cart')
          )
        ],
      ),
    ),
  );
}