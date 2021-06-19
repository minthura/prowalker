import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants.dart';
import 'circular_highlight_image.dart';
import 'favorite_icon.dart';
import 'highlight_label.dart';
import 'price_label.dart';

class ProductItemCard extends StatelessWidget {
  final String title;
  final String price;
  final double rating;
  final int discount;
  final String logoUrl;
  final bool isFavorite;
  final Function()? onTap;
  const ProductItemCard({
    Key? key,
    required this.title,
    required this.price,
    required this.rating,
    required this.discount,
    required this.isFavorite,
    required this.logoUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int circleColor = circleColors[Random().nextInt(4)];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kCardBackgroundColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(5, 10),
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: -9)
            ]),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                HighlightLabel(text: '$discount%'),
                Spacer(),
                FavoriteIcon(isFavorite: isFavorite),
              ],
            ),
            CircularHighlightImage(circleColor: circleColor, logoUrl: logoUrl),
            SizedBox(
              height: 4,
            ),
            Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            PriceLabel(unit: '\$', price: price),
            Spacer(),
            RatingBar.builder(
              initialRating: rating,
              itemSize: 15,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
    );
  }
}
