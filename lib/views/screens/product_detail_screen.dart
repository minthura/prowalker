import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prowalker/views/widgets/color_selector.dart';
import 'package:prowalker/views/widgets/favorite_icon.dart';
import 'package:prowalker/views/widgets/highlight_label.dart';
import 'package:prowalker/views/widgets/price_label.dart';
import 'package:prowalker/views/widgets/item_selector.dart';

import '../../constants.dart';

class ProductDetailScreen extends StatelessWidget {
  static const route = '/product-details';
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int circleColor = circleColors[Random().nextInt(4)];
    return Scaffold(
      appBar: AppBar(
        title: Text('ProWalker'),
        centerTitle: true,
        elevation: 0.5,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: FavoriteIcon(isFavorite: true),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: HighlightLabel(text: '30%'),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white, // Color(circleColor),
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(circleColor),
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 238,
                    height: 238,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(circleColor),
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    width: 198,
                    height: 198,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(circleColor),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/shoe5.png',
                    height: 90,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kScaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 24,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'MENS KAPTIR SUPER SNEAKER',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.yellow.shade600,
                            size: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '(4.8)',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Train hard with a smooth look in the Axelion men\'s sneaker from PUMA. With a breathable mesh upper and midfoot TPU shank for control through the heel, these lace-up sneakers let you step your game up. The SoftFoam footbed provides optimal cushioning while the rubber traction outsole keeps you grounded enough to push through every movement.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: ItemSelector(onSelected: (index) {}, itemTexts: [
                        'US 5',
                        'US 6',
                        'US 7',
                        'US 8',
                        'US 9',
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      height: 30,
                      child: ColorSelector(onSelected: (index) {}, colors: [
                        0xfffdd446,
                        0xfff6565d,
                        0xfff9a1da,
                        0xff6ea2ff,
                      ]),
                    ),
                    Spacer(),
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
                            price: '269.00',
                            unit: '\$',
                            fontSize: 10,
                            fontColor: Colors.black,
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                CupertinoIcons.cart,
                              ),
                            ),
                            label: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Add to cart',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: kScaffoldBackgroundColor,
                              primary: kButtonColor,
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
            ),
          ],
        ),
      ),
    );
  }
}
