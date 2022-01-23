import 'package:flutter/material.dart';
import 'package:ui_design6/card.dart';

class Catalouge extends StatelessWidget {
  const Catalouge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Catalouge'),
            centerTitle: true,
            actions: [
              Icon(
                Icons.search_outlined,
              ),
              SizedBox(
                width: 20,
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Products',
                ),
                Tab(
                  text: 'Categories',
                )
              ],
            ),
          ),
          body:SingleChildScrollView(child:Column(children: [CardDesign(title: 'Mi Smart Band 5', subtitle1: 'Fitness Band', img:'https://m.media-amazon.com/images/I/31x-J+tVmgS._SY300_SX300_.jpg', price: '1699'),
            CardDesign(title: 'Oneplus Bullets Wireless ', subtitle1: 'Earphones', img: 'https://m.media-amazon.com/images/I/51R4FJdgbMS._SL1500_.jpg', price: '1999'),
            CardDesign(title: 'Acer Nitro 5', subtitle1: 'Gaming Laptop', img:'https://images-eu.ssl-images-amazon.com/images/I/41x2hlOf3RS._SY300_SX300_QL70_FMwebp_.jpg', price:'75,000'),
            CardDesign(title: 'Noise Color Fit Pro', subtitle1: 'Smart Watch', img:'https://m.media-amazon.com/images/I/61xzuXWWozS._SX522_.jpg', price: '2,299')],)
          ,) 
          
          
           
        
        ));
  }
}
