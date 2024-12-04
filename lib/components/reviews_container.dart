import 'package:clothes_e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class ReviewsContainer extends StatelessWidget {
  final Product product;

  const ReviewsContainer({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // icon
        const Icon(
          Icons.star,
          size: 18,
          color: Colors.orange,
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
    );
  }
}
