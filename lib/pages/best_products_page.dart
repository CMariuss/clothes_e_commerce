import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';

class BestProductsPage extends StatefulWidget {
  const BestProductsPage({super.key});

  @override
  State<BestProductsPage> createState() => _BestProductsPageState();
}

class _BestProductsPageState extends State<BestProductsPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best products'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GridView.builder(
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductContainer(product: products[index]);
            },
          ),
        ),
      ),
    );
  }
}
