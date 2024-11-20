import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';

class BestProductsPage extends StatefulWidget {
  const BestProductsPage({super.key});

  @override
  State<BestProductsPage> createState() => _BestProductsPageState();
}

class _BestProductsPageState extends State<BestProductsPage> {
  final List<Product> products = List.generate(
    10,
    (index) => Product(
      name: 'Product $index',
      price: 29.99 + index,
      imagePath: 'https://via.placeholder.com/150', // Placeholder image
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductContainer(product: products[index]);
          },
        ),
      ),
    );
  }
}
