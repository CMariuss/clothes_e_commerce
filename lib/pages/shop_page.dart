import 'package:clothes_e_commerce/components/categories_row.dart';
import 'package:flutter/material.dart';

import '../components/ad_container.dart';
import '../components/category_box.dart';
import '../components/product_container.dart';
import '../components/see_all_label.dart';
import '../models/product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<String> imagePathList = [
    'images/men/jacket_men_02.png',
    'images/women/coat_women_01.png',
    'images/women/coat_women_02.png',
    'images/men/jacket_men_01.png',
  ];

  late List<Product> products = [];

  List<Product> generateProductList() {
    return List.generate(
      4,
      (index) => Product(
        name: 'Product $index',
        price: 29.99 + index,
        imagePath: imagePathList[index], // Placeholder image
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    products = generateProductList();
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

          const SizedBox(height: 25),

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
                  padding: const EdgeInsets.only(right: 15),
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
