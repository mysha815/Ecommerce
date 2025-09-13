import 'package:flutter/material.dart';
import 'Images_list.dart';
class GroceryScreeen extends StatelessWidget {
  const GroceryScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   GridView.builder(
          itemCount: Populardeals.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context,index){
            return Card(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(
                    Populardeals[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      Text(Populardeals[index]['name']!,
                        style: TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Populardeals[index]['price']!,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                            Row(
                              children: [
                                Text('4.8',
                                  style: TextStyle(color: Colors.pinkAccent),
                                ),
                                Icon(Icons.star,color: Colors.orange,)
                              ],
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(color: Colors.yellow,width: 1),
                              )
                          ),
                          child: Text('Add to Cart',style: TextStyle(color: Colors.yellow),))
                    ],
                  )

                ],
              ),
            );
          }),
    );
  }
}
