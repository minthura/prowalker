import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prowalker/views/widgets/circular_highlight_image.dart';
import 'package:prowalker/views/widgets/price_label.dart';

import '../../constants.dart';

class MyCartScreen extends StatelessWidget {
  static const route = '/my-cart';
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.delete),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            child: CircularHighlightImage(
                              circleColor: circleColors[Random().nextInt(4)],
                              logoUrl: 'assets/images/shoe${index + 1}.png',
                              logoSize: 80,
                              baseCircleSize: 80,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    shoes[index]['title'] ?? '',
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.blue.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  PriceLabel(
                                    unit: '\$',
                                    price: shoes[index]['price'] ?? '',
                                    fontSize: 6,
                                    align: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.plus_circle_fill),
                                iconSize: 16,
                              ),
                              Text('${index + 1}'),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.minus_circle),
                                iconSize: 16,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Row(
                children: [
                  Text('Subtotal: '),
                  Text(
                    '\$1345.99',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('Shipping: '),
                  Text(
                    '\$35.00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceLabel(
                    price: '1380.99',
                    unit: '\$',
                    fontSize: 10,
                    fontColor: Colors.black,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        CupertinoIcons.cart_fill,
                        color: Colors.white,
                      ),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
