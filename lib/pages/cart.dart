import 'package:flutter/material.dart';
// myimport

import 'package:shoplite/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      appBar:  AppBar(
       elevation: 0,
        backgroundColor: Colors.red[500],
        title: Center(child: Text(
          'Cart',
        style: TextStyle(
          fontSize: 28.0,
        ),
        )),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,
          
          ), onPressed: () {}),
          
        ],
        
      ),

      body:  CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children:[

          Expanded (child: ListTile(
            title: Text('Total Amount:'),
            subtitle: Text('\$ 230'),
          ),),
          Expanded(child: MaterialButton(onPressed: () {},
          child: Text('Checkout', style: TextStyle(color: Colors.white),),
          color: Colors.red,

          ))
        ]),
      ),
    );
  }
}