import 'package:flutter/material.dart';
import 'package:prowalker/views/screens/product_detail_screen.dart';

import 'views/screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.route: (_) => HomeScreen(),
  ProductDetailScreen.route: (_) => ProductDetailScreen(),
};
