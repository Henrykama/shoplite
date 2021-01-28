import 'package:flutter/material.dart';
import 'package:shoplite/pages/productdetail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list =[

    {
      'name':'Blazer',
      'picture':'images/images/products/blazer1.jpeg',
      'old_price':350.0,
      'price':400.0,

    },

    {
      'name':'Dress',
      'picture':'images/images/products/dress1.jpeg',
      'old_price':350.0,
      'price':400.0,

    },

    {
      'name':'Hills',
      'picture':'images/images/products/hills1.jpeg',
      'old_price':350.0,
      'price':400.0,

    },
    {
      'name':'Pants',
      'picture':'images/images/products/pants1.jpg',
      'old_price':350.0,
      'price':400.0,

    },
    {
      'name':'Shoe',
      'picture':'images/images/products/shoe1.jpg',
      'old_price':350.0,
      'price':400.0,

    },
  {
      'name':'Skirt',
      'picture':'images/images/products/skt1.jpeg',
      'old_price':350.0,
      'price':400.0,

    },


  

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2), itemBuilder: (BuildContext context, int index){
        return  Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({this.prod_name, this.prod_picture, this.prod_old_price,this.prod_price});
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Hero(tag: prod_name, child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: 
          (context)=> new ProductDetails(
            // Pass product details to details page
            product_detail_name: prod_name,
            product_detail_old_price: prod_old_price,
            product_detail_price: prod_price,
            product_detail_picture: prod_picture,

          ))),
          child: GridTile(
            footer: Container(
              color:Colors.white,
              child: Row(
                children: [

                  Expanded(child: Text( prod_name,style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold, fontSize: 16.0,
                    ) ),
                  ), 
                  Text('\$$prod_price', style: TextStyle(color: Colors.red, fontSize: 16.0, fontWeight: FontWeight.bold),)
                ],
              
                    
                    )
              
              ), 
              child: Image.asset(
              prod_picture,
              fit: BoxFit.cover
              ),

          ),
        ),
      ))
    );
  }
}

