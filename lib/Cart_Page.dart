import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  final List<Map<String,String>> Cartitems = [
    {
      'name' : 'iphone 14 Pro',
      'price' : 'SAR 3299.',
     'weight' : '206g',
      'image' : 'assets/Mobile/galaxy.JPG',
      'num' : '1'
    },
    {
      'name' : 'MacBook Air M2',
      'price' : 'SAR 4599.',
      'weight' : '1.24g',
      'image' : 'assets/Mobile/galaxy.JPG',
      'num' : '1'
    },
    {
      'name' : 'AirPods Pro',
      'price' : 'SAR 899.',
      'weight' : '56g',
      'image' : 'assets/Mobile/galaxy.JPG',
      'num' : '2'
    },
    {
      'name' : 'Samsung Galaxy',
      'price' : 'SAR 2899.',
      'weight' : '168g',
      'image' : 'assets/Mobile/galaxy.JPG',
      'num' : '1'
    },



  ];
   CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_grocery_store_outlined,color: Colors.blue,),
            Text(
                'My Cart (4)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
          ),
        child: ListView.builder(
          itemCount: Cartitems.length,
            itemBuilder: (context,index){
            return Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              child: ListTile(
                leading: Image.asset(
                  Cartitems[index]['image']!,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),

                title: Text(
                  Cartitems[index]['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                subtitle: Row(
                  children: [
                    Text(
                      Cartitems[index]['price']!,
                    ),
                    Text(
                      Cartitems[index]['weight']!
                    )
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.remove_circle_outline,size: 30,)),
                    Text(
                      Cartitems[index]['num']!,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color: Colors.blue,size: 30,))
                  ],
                ),
              ),
            );
            }
        ),
      ),
    );
  }
}
