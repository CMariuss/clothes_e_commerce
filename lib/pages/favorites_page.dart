import 'package:clothes_e_commerce/components/saved_product_tile.dart';
import 'package:clothes_e_commerce/models/product.dart';
import 'package:clothes_e_commerce/models/product_list.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      productList = ProductList.productList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(height: 20),
        SavedProductTile(
          productList: productList,
        ),
      ],
    ));
  }
}
