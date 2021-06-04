import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First Application',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                print('search');
              }),
          IconButton(
            icon:Icon(
              Icons.shopping_cart,
            ),
            onPressed: (){
              print('Shopping Cart');
            },
          ),
        ],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
              borderRadius:BorderRadius.only(
                topLeft:Radius.circular(20),
              ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:[
                  Image(
                    image:NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509__340.jpg'
                    ),
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.7),
                    padding:EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                     ),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
