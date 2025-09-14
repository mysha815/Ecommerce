import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/product_details.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'Images_list.dart';

import 'Grocery_Screeen.dart';
import 'Products.dart';
import 'Widget/Category_Card.dart';
import 'Widget/Products_Card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Images/HyperMart.png'),
                  Icon(
                    Icons.notifications,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
              title: Text(
                'Bengaluru',
                style: TextStyle(fontSize: 12),
              ),
              subtitle: Text('BTM Layout,500628'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: ' Search Anything...',
                    labelStyle: TextStyle(color: Colors.blueGrey),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.mic_none_outlined,
                      color: Colors.cyan,
                      size: 25,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
            ),
            CarouselSlider.builder(
                itemCount: sliders.length,
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(sliders[itemIndex]['image']!),
                            fit: BoxFit.cover)),
                  );
                },
                options: CarouselOptions(
                  height: 180,
                  aspectRatio: 16 / 9,
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
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: CategoryCard(
                            image: categories[index]['image']!,
                            title: categories[index]['title']!,
                            color:categories[index]['color']!
                        ),
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Deals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(
                        image: product['image'],
                        title: product['title'],
                        price: product['price']
                      )
                      ));
                    },
                    child: ProductsCard(
                        image: products[index]['image']!,
                        title: products[index]['title']!,
                        price: products[index]['price']!),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

Widget _CategoriesCard({
  required Color Color,
  required IconData icondata,
  required title,
  required VoidCallback onTap,
}) {
  return InkWell(
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
          Icon(
            icondata,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    ),
  );
}
