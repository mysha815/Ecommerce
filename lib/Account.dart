import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
                
              ListTile(
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipOval(
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq5c4JANXE51izX9movBWxBFOp1HuHI9D67A&s',
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                title: Text('Mysha',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text('mysha@gmail.com',style: TextStyle(fontSize: 14,color: Colors.grey),),
                
              ),
                
              Divider(
                indent: 20,
                endIndent: 20,
              ),
                
              ListTile(
                leading: Icon(Icons.person_outline,color: Colors.black,size: 30,),
                title: Text('My Profile',style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
                
              Divider(indent: 20,
                endIndent: 20,),
                
              ListTile(
                leading: Text('Shiping Address',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
               indent: 20,
                endIndent: 20,
              ),
                
              ListTile(
                leading: Text('Payment methods',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
                

                
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       'Shop',
              //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
              //     ),
              //   ),
              // ),


                
              ListTile(
                leading: Text('Country',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Vietnam',style: TextStyle(fontSize: 15),),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
              ),

              Divider(indent: 20,
                endIndent: 20,),

              ListTile(
                  leading: Text('Currency',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('\$ USD',style: TextStyle(fontSize: 15),),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )
              ),

              Divider(
                indent: 20,
                endIndent: 20,
              ),

              ListTile(
                  leading: Text('Sizes',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('UK',style: TextStyle(fontSize: 15),),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )
              ),

              Divider(
                indent: 20,
                endIndent: 20,
              ),

              ListTile(
                leading: Text('Terms and Conditions',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              Divider(indent: 20,
                endIndent: 20,),
              

            ],
          ),
        ),
      
      
      )


    );
  }
}
