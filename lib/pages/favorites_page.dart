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
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SavedProductTile(
              product: productList[index],
              onDeletePressed: (context) {},
            ),
          );
        },
      ),
    );
  }
}
