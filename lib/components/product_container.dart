import 'package:clothes_e_commerce/components/reviews_container.dart';
import 'package:clothes_e_commerce/themes/text/fonts.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

// Define a ProductContainer widget to display each product
class ProductContainer extends StatelessWidget {
  final Product product;

  const ProductContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
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

          Row(
            children: [
              // Brand
              Text(
                product.brand,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(width: 15),

              // Reviews
              ReviewsContainer(product: product),
            ],
          ),

          // Product Name
          Text(
            product.name,
            style: fProductTitleFont(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          // Product Price
          Text(
            '\$${product.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
