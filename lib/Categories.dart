import 'package:flutter/material.dart';

import 'Images_list.dart';
import 'Widget/Category_Card.dart';

class Categories extends StatelessWidget {
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
                  childAspectRatio: 0.90,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
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



