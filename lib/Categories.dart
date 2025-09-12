import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Map<String,dynamic>> categories =[

    {
      'image':'assets/Images/amla.png',
      'title':'Doubur Amla\nExtra oil',
      'price':'৳96.95'
    },
    {
      'image':'assets/Images/Amla (2).png',
      'title':' Amla Extra oil',
      'price':'৳96.95'
    },
    {
      'image':'assets/Images/coconut.png',
      'title':'Coconut\nParachute oil',
      'price':'৳96.95'
    },
    {
      'image':'assets/Images/jesmin.png',
      'title':'Jesmine\nExtra oil',
      'price':'৳96.95'
    },
    {
      'image':'assets/Images/katrinajesmin.png',
      'title':'Jesmine extracts Extra\n oil',
      'price':'৳96.95'
    },
    {
      'image':'assets/Images/amla.png',
      'title':'Doubur Amla\nExtra oil',
      'price':'৳96.95'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oil & Ghee',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
      ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: categories.length,
          itemBuilder: (context,index){
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
                          categories[index]['image']!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),


                    ListTile(
                      title: Text(
                        categories[index]['price']!,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        categories[index]['title']!,
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
      ),

    );
  }
}
