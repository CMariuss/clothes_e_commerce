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
  final List<Product> products_01 = List.generate(
    10,
    (index) => Product(
      name: 'Product $index',
      price: 29.99 + index,
      imagePath: 'https://via.placeholder.com/150', // Placeholder image
    ),
  );

  final List<Product> products = [
    Product(
        name: 'Men\'s shirt - flowers',
        price: 20,
        imagePath: 'images/men_s_shirt_01.png'),
    Product(
        name: 'Women\'s coat',
        price: 32,
        imagePath: 'images/women_s_coat_01.png'),
    Product(
        name: 'Women\'s blouse',
        price: 15,
        imagePath: 'images/women_s_blouse_01.png'),
  ];

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
            height: 250,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductContainer(product: products[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
