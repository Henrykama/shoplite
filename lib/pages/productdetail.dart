import 'package:flutter/material.dart';
import 'package:shoplite/main.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_old_price,
    this.product_detail_price,
    this.product_detail_picture
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
       elevation: 0,
        backgroundColor: Colors.red[500],
        title:InkWell(
          onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
          child: Text('Shop Lite')),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,
          
          ), onPressed: () {}),
          
        ],
        
      ),
      body: ListView(
        children: [
          Container(
            height:300,
            child: GridTile(child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white,
                
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                   style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  ),
                  ),
                 
                title: Row(children: [
                  Expanded(child: Text('\$${widget.product_detail_old_price}',
                  style: TextStyle(color: Colors.black),
                  
                  )),
                  Expanded(child: Text('\$${widget.product_detail_price}'))
                ],)
                ),
                
                ),

              ),
          
          ),
          // first button ==========
          Row(children: [
            // Size Button =======
            Expanded(child: MaterialButton(onPressed: (){

              showDialog(context:context, 
              builder: (context) => (
                AlertDialog(
                  title: Text('Size'),
                  content: Text('Choose the Size'),
                  actions: [
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                     child: Text('Close'),
                    ),
                 
                  ],
                )
              ));
            },
            color: Colors.white,
            textColor: Colors.grey,
            child: Row(children: [
              Expanded(child: Text('Size')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],),
            
            )
            ),
            Expanded(child: MaterialButton(onPressed: (){

              showDialog(context:context, 
              builder: (context) => (
                AlertDialog(
                  title: Text('Color'),
                  content: Text('Choose the Color'),
                  actions: [
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                     child: Text('Close'),
                    ),
                 
                  ],
                )
              ));
            },
            color: Colors.white,
            textColor: Colors.grey,
            child: Row(children: [
              Expanded(child: Text('Color')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],),
            
            )
            ),

            Expanded(child: MaterialButton(onPressed: (){

              showDialog(context:context, 
              builder: (context) => (
                AlertDialog(
                  title: Text('Quantity'),
                  content: Text('Choose Quantity'),
                  actions: [
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                     child: Text('Close'),
                    ),
                 
                  ],
                )
              ));
            
            },
            color: Colors.white,
            textColor: Colors.grey,
            child: Row(children: [
              Expanded(child: Text('Qty')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],),
            
            ))
          ],),
        Row(children: [

          Expanded(child: MaterialButton(onPressed: () {},
          color: Colors.red,
          textColor: Colors.white,
          elevation: 0.0,
          child: Text("Buy now"),
          
          )
          ),
          IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red, onPressed: () {}),

          IconButton(icon: Icon(Icons.favorite_border), color: Colors.red ,onPressed: () {}),
        ],
        ),
        Divider(),
        ListTile(
          title: Text("Product Details"),
          subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          )
          
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Similar Products'),
        ),
        Container(
          height: 600,
          child: SimilarProducts(),
          )
        ],
        // Similar produts section
        
      )
    );
  }
}



class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  
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
        return  SimiliarSingleprod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
  }

      
}

class SimiliarSingleprod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SimiliarSingleprod({this.prod_name, this.prod_picture, this.prod_old_price,this.prod_price});
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
