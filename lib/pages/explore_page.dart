import 'package:clothes_e_commerce/components/categories_row.dart';
import 'package:clothes_e_commerce/components/explore_filter_row.dart';
import 'package:clothes_e_commerce/components/search_text_field.dart';
import 'package:clothes_e_commerce/models/product_list.dart';
import 'package:clothes_e_commerce/pages/product_page.dart';
import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late List<Product> products = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      products = ProductList.productList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchTextField(),
        foregroundColor: Colors.grey.shade800,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const ExploreFilterRow(),

              // categories
              const SizedBox(height: 10),
              const CategoriesRow(),

              // product list
              Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return ProductContainer(
                            product: products[index],
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductPage(product: products[index]),
                              ),
                            ),
                          );
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
      ),
    );
  }
}
