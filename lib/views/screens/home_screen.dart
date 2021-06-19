import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prowalker/views/screens/product_detail_screen.dart';
import 'package:prowalker/views/widgets/product_item_card.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProWalker'),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Our Products',
                  style: Get.textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Sort by',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        CupertinoIcons.chevron_down,
                        color: Colors.grey,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.18),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  ...List.generate(
                    shoes.length,
                    (index) => ProductItemCard(
                      discount: 10,
                      isFavorite: index % 2 == 0,
                      logoUrl: shoes[index]['logoUrl'] ?? '',
                      price: shoes[index]['price'] ?? '',
                      rating: 4.3,
                      title: shoes[index]['title'] ?? '',
                      onTap: () => Get.toNamed(ProductDetailScreen.route),
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
