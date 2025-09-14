import 'package:flutter/material.dart';
class SuccessfullScreen extends StatefulWidget {
  const SuccessfullScreen({super.key});

  @override
  State<SuccessfullScreen> createState() => _SuccessfullScreenState();
}

class _SuccessfullScreenState extends State<SuccessfullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(Icons.check_circle,color: Colors.green,size: 85,),
          ),
          Text(
              'Order Placed Successfully',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
          ),
          Text(
            'Thank you for shopping with us',
            style: TextStyle(color:Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20,),
          FilledButton(
              onPressed: (){},
              style: FilledButton.styleFrom(backgroundColor: Colors.blueAccent),
              child:Text('Back to Home',style: TextStyle(color: Colors.black),)
          )
        ],
      ),
    );
  }
}
