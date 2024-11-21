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
              Row(
                children: [
                  // icon
                  const Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.orangeAccent,
                  ),

                  // rating number
                  Text(
                    product.rating.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(width: 5),

                  // reviews number
                  Text(
                    '(${product.reviewsNumber.toString()})',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),

          // Product Name
          Text(
            product.name,
            style: TextStyle(
              fontSize: 15,
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
    );
  }
}
