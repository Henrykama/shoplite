
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//own packages
import 'package:shoplite/components/horizontal_listview.dart';
import 'package:shoplite/components/products.dart';
import 'package:shoplite/pages/cart.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  home: HomePage(),

));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget ImageCarousel = Container(
       height: 200.0,
       child: Carousel(
         boxFit: BoxFit.cover,
         images: [
           AssetImage('images/images/c1.jpg'),
           AssetImage('images/images/m1.jpeg'),
           AssetImage('images/images/m2.jpg'),
           AssetImage('images/images/w1.jpeg'),
           AssetImage('images/images/w3.jpeg'),
           AssetImage('images/images/w4.jpeg'),
         ],
         autoplay: false,
        //  animationCurve: Curves.fastOutSlowIn,
        //  animationDuration: Duration(milliseconds: 1000),
         dotSize: 4.0,
         indicatorBgPadding: 2.0,
         ),
    );
    return Scaffold(
     appBar:  AppBar(
       elevation: 0,
        backgroundColor: Colors.red[500],
        title: Center(child: Text(
          'Shop Lite',
        style: TextStyle(
          fontSize: 28.0,
        ),
        )),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,
          
          ), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,
           ), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
           } ),
        ],
        
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName:Text('Sir Henry '), 
              accountEmail:Text('info@genbright.co.ke'),
              currentAccountPicture:GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black
                  ),
                ),
              ) ,
              decoration: BoxDecoration(
                color: Colors.red
              ),
               
              ),
            InkWell(
                         onTap: () {

                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                         }, 
                          child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.black,),

              ),
            ),
            InkWell(
                         onTap: () {}, 
                          child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.orange,),

              ),
            ),
            InkWell(
                         onTap: () {}, 
                          child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.pink,),

              ),
            ),
            InkWell(
                         onTap: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));

                         }, 
                          child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.yellow[600],),

              ),
            ),
            InkWell(
                         onTap: () {}, 
                          child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red[600],),

              ),
            ),
            Divider(),
            InkWell(
                         onTap: () {}, 
                          child: ListTile(
                title: Text('settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),

              ),
            ),
            InkWell(
                         onTap: () {}, 
                          child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),

              ),
            )
          ]
        )
      ),
      body: ListView(
        children: [

          ImageCarousel,
          Padding(padding: EdgeInsets.all(20.0),
          child: Text('Categories',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
        HorizontalList(),
    
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('Recent Products',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
          Container(
            height: 420.0,
            child: Products(),
          )
        ],),
    );
  }
}
