import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsCart=[
    {
      'name':'Hills',
      'picture':'images/images/products/hills1.jpeg',
      'price':300.0,
      'size': 'M',
      'color': 'Red',
      'quantity': 1,

    },
    {
      'name':'Pants',
      'picture':'images/images/products/pants1.jpg',
      'price':40.0,
      'size': '11',
      'color': 'Brown',
      'quantity': 1,

    },
    {
      'name':'Shoe',
      'picture':'images/images/products/shoe1.jpg',
      'price':400.0,
      'size': '7',
      'color': 'Black',
      'quantity': 1,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsCart.length,
      itemBuilder:(context, index){
        return SingleCartProduct(
          cartprodname:productsCart[index]['name'],
          cartprodcolor: productsCart[index]['color'],
          cartprodqty: productsCart[index]['quantity'],
          cartprodsize: productsCart[index]['size'],
          cartprodprice: productsCart[index]['price'],
          cartprodpicture: productsCart[index]['picture'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartprodname;
  final cartprodpicture;
  final cartprodsize;
  final cartprodprice;
  final cartprodcolor;
  final cartprodqty;

  SingleCartProduct({
    this.cartprodname, 
  this.cartprodpicture, 
  this.cartprodprice,
  this.cartprodcolor,
  this.cartprodqty,
  this.cartprodsize
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: ListTile(
        // image leading Section
        leading: Image.asset(cartprodpicture, ),
       // title section  product name 
        title: Text(cartprodname),
  // Subtitle  size quantity 
        subtitle: Column(children: [
          //row insied the column
          Row(children: [
            //product size handling
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Size :'),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(cartprodsize, style: TextStyle(color: Colors.red),),
           ),
           //product color  =========
           Padding(padding: const EdgeInsets.fromLTRB(0.0, 4.0, 4.0, 4.0),
          child: Text('Color :'),
           ),
           Padding(padding: const EdgeInsets.fromLTRB(0.0, 4.0, 4.0, 4.0),
          child: Text(cartprodcolor, style: TextStyle(color: Colors.red)) ,
          )],),

          // product Price 
          Container(alignment: Alignment.topLeft,
          child: Text("\$${cartprodprice}", style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          ),),
          ),
         
        ],
        ),
        trailing:FittedBox(
             fit: BoxFit.fill,
            child: Column(
              
            children: [
             IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {},iconSize: 90.0,),
            Text('${cartprodqty}',
            
            style: TextStyle(fontSize: 80.0,),),
             IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {},iconSize: 90.0,)
               ],
          ),
        )
      ),
    );
  }
}

