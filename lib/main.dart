import 'package:clothes_e_commerce/pages/cart_page.dart';
import 'package:clothes_e_commerce/pages/categories_page.dart';
import 'package:clothes_e_commerce/pages/home_page.dart';
import 'package:clothes_e_commerce/pages/products_page.dart';
import 'package:clothes_e_commerce/pages/search_page.dart';
import 'package:clothes_e_commerce/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightMode,
      routes: {
        '/products_page': (context) => const ProductsPage(),
        '/categories_page': (context) => const CategoriesPage(),
        '/search_page': (context) => const SearchPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
