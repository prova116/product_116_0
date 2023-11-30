import 'package:flutter/material.dart';

import 'BuyNowPage.dart';

class Productdetails extends StatelessWidget {
  const Productdetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
          title: Text(
            'Product',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle:true,
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.message,color: Colors.white,),
          actions:<Widget>[
            IconButton(icon:const Icon(Icons.add,color: Colors.white,),onPressed: (){})
          ]
      ),
      body: Container(
        margin: EdgeInsets.all(18.0),
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Product name: Iphone 14 Pro',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Image.asset('images/Iphone_pro.jpg'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Product Price: \$999.00',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Product Feature Description:',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'The iPhone 14 Pro is a powerhouse offering a choice of 6 GB RAM with storage options ranging from 128 GB to a massive 1024 GB...',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyNowPage()),
                  );
                },
                child:Row(
                  mainAxisSize:MainAxisSize.min,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    Icon(Icons.shopping_cart),
                    SizedBox(width:10.0),
                    Text('Buy Now'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

