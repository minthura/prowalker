import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prowalker/views/screens/base_nav_screen.dart';
import 'package:prowalker/views/screens/product_detail_screen.dart';

import 'routes.dart';
import 'theme.dart';

class WalkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jobbie',
      theme: theme(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      // home: ProductDetailScreen(), //BaseNavScreen(),
      home: BaseNavScreen(),
    );
  }
}
