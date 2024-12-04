import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.checkroom),
        ],
      ),
      body: ListView(
        children: [
          // product pictures
          Image.asset('images/men/jacket_men_02.png'),

          // TITLE
          // brand, rating, reviews, heart icon
          // product title
          // product price

          // product details
        ],
      ),
    );
  }
}
