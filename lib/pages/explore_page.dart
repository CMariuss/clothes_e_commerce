import 'package:clothes_e_commerce/components/categories_row.dart';
import 'package:clothes_e_commerce/components/explore_filter_row.dart';
import 'package:clothes_e_commerce/components/search_text_field.dart';
import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<Product> products = List.generate(
    10,
    (index) => Product(
      name: 'Product $index',
      price: 29.99 + index,
      imagePath: 'images/winter_collection_ad.png', // Placeholder image
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchTextField(),
        foregroundColor: Colors.grey.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const ExploreFilterRow(),

            // categories
            const SizedBox(height: 10),
            const CategoriesRow(),

            Expanded(
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ProductContainer(product: products[index]);
                      },
                      childCount: products.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // product list
        // GridView.builder(
        //   shrinkWrap: true,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     childAspectRatio: 0.7,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //   ),
        //   itemCount: products.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ProductContainer(product: products[index]);
        //   },
        // ),
      ),
    );
  }
}
