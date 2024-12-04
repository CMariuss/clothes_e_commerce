import 'package:clothes_e_commerce/components/categories_row.dart';
import 'package:clothes_e_commerce/models/product_list.dart';
import 'package:flutter/material.dart';

import '../components/ad_container.dart';
import '../components/product_container.dart';
import '../components/see_all_label.dart';
import '../models/product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late List<Product> products = [];

  @override
  void initState() {
    super.initState();
    ProductList.generateProductList();
    setState(() {
      products = ProductList.productList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          const SizedBox(height: 10),

          // ad container
          const AdContainer(),

          const SizedBox(height: 30),

          // categories label
          SeeAllLabel(
            label: 'Shop by categories',
            onTap: () {
              Navigator.pushNamed(context, '/categories_page');
            },
          ),

          const SizedBox(height: 15),

          // clothes categories
          const CategoriesRow(),

          // best products label
          SeeAllLabel(
            label: 'Best products',
            onTap: () {
              Navigator.pushNamed(context, '/products_page');
            },
          ),

          const SizedBox(height: 15),
          // clothes list
          SizedBox(
            height: 260,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ProductContainer(product: products[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
