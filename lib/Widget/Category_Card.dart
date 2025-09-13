import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget CategoryCard(
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