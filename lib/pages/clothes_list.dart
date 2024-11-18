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
  final List<Product> products = List.generate(
    10,
    (index) => Product(
      name: 'Product $index',
      price: 29.99 + index,
      imageUrl: 'https://via.placeholder.com/150', // Placeholder image
    ),
  );

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
          SizedBox(
            height: 130,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // physics: const NeverScrollableScrollPhysics(),
              children: const [
                // women
                CategoryBox(
                  title: 'Women',
                  child: Icon(Icons.woman),
                ),

                SizedBox(width: 20),

                // men
                CategoryBox(
                  title: 'Men',
                  child: Icon(Icons.man),
                ),

                SizedBox(width: 20),

                // kids
                CategoryBox(
                  title: 'Kids',
                  child: Icon(Icons.child_care),
                ),

                SizedBox(width: 20),

                // babies
                CategoryBox(
                  title: 'Babies',
                  child: Icon(Icons.child_friendly_outlined),
                ),

                SizedBox(width: 20),

                // blouses
                CategoryBox(
                  title: 'Blouses',
                  child: Icon(Icons.crop_square),
                ),

                SizedBox(width: 20),

                // trousers
                CategoryBox(
                  title: 'Trousers',
                  child: Icon(Icons.circle_outlined),
                ),
              ],
            ),
          ),

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