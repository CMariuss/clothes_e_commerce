import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
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
