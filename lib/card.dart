import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  const CardDesign(
      {Key? key,
      required this.title,
      required this.subtitle1,
      required this.img,
      required this.price})
      : super(key: key);
  final String img;
  final String title;
  final String subtitle1;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 166,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: Image.network(img),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title),
                      Transform.rotate(
                          angle: 1.56, child: Icon(Icons.keyboard_control)),
                    ],
                  ),

                  // trailing: Icon(Icons.keyboard_tab),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitle1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₹$price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          // Transform.rotate(
                          //     angle: 1.56, child: Icon(Icons.keyboard_control)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'In Stock',
                            style: TextStyle(color: Colors.green),
                          ),
                          Icon(
                            Icons.toggle_on,
                            color: Colors.blue,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [Icon(Icons.share_outlined), Text('Share Product')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
