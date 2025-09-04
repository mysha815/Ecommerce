import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Grocery_Screeen.dart';


class HomeScreen extends StatelessWidget {

  final List<Map<String,dynamic>> Populardeals=[
    {
      'image':'assets/Chips.png',
      'name' :'Fried Chips',
      'price' :'৳12'
    },
    {
      'image':'assets/Washing_machine.png',
      'name':'LG washing machine',
      'price':'৳45,999'
    },
    {
      'image':'assets/Sofa.png',
      'name':'Moder Chair',
      'price':'৳3599'
    },

  ];

  List<Map<String,String>> sliders =[
    {
      'image': 'assets/Group 9.png',
    },
    {
      'image':'assets/food banne1.jpeg',
    },
    {
      'image':'assets/foodbanner2.jpeg'
    },
    {
      'image':'assets/foodbanner3.jpeg'
    }
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/HyperMart.png'),
                  Icon(Icons.notifications,color: Colors.red,),
                ],
              ),
            ),
            SizedBox(height: 8,),

            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(Icons.location_on_outlined,size: 20,color: Colors.white,)),
              title: Text('Bengaluru',style: TextStyle(fontSize: 12),),
              subtitle: Text('BTM Layout,500628'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),



            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText:' Search Anything...',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    prefixIcon: Icon(Icons.search,size: 30,color: Colors.blueGrey,),
                    suffixIcon: Icon(Icons.mic_none_outlined,color: Colors.cyan,size: 25,),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),

            CarouselSlider.builder(
                itemCount: sliders.length,
                itemBuilder:(context,itemIndex,pageViewIndex){
                  return Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(sliders[itemIndex]['image']!),
                            fit: BoxFit.cover
                        )
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 180,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )
            ),






            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _CategoriesCard(Color: Colors.cyan, icondata: Icons.local_florist, title: 'Groceries', onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> GroceryScreeen()));
                    }),
                    SizedBox(width: 10,),
                    _CategoriesCard(Color: Colors.blue.shade500, icondata: Icons.local_laundry_service_outlined, title: 'Appliance', onTap: () {  }),
                    SizedBox(width: 10,),
                    _CategoriesCard(Color: Colors.purpleAccent, icondata: Icons.dry_cleaning, title: 'Fashion', onTap: () {  }),
                    SizedBox(width: 10,),
                    _CategoriesCard(Color: Colors.orangeAccent, icondata: Icons.camera_alt_outlined, title: 'Camera', onTap: () {  }),
                    SizedBox(width: 10,),
                    _CategoriesCard(Color: Colors.redAccent, icondata: Icons.fastfood_outlined, title: 'Food', onTap: () {  }),



                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                ],
              ),
            ),
            GridView.builder(
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
                          height: 100,

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


          ],
        ),
      ),


    );
  }
}
Widget _CategoriesCard ({
  required Color Color ,
  required IconData icondata,
  required title,
  required VoidCallback onTap,

}) {
  return  InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color,
      ),

      height: 110,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icondata,size: 25,color: Colors.white,),
          SizedBox(height: 15,),
          Text(title,style: TextStyle(color: Colors.white,fontSize: 14),)
        ],
      ),
    ),
  );

}