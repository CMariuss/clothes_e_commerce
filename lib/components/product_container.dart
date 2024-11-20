import 'package:flutter/material.dart';

import '../models/product.dart';

// Define a ProductContainer widget to display each product
class ProductContainer extends StatelessWidget {
  final Product product;

  const ProductContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product Image
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              product.imagePath,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product brand
            const Text(
              'H&M',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            // Product Name
            Text(
              product.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // Product Price
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
