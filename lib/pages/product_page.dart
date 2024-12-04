import 'package:clothes_e_commerce/components/checkout_button.dart';
import 'package:clothes_e_commerce/components/product_page_picture_container.dart';
import 'package:clothes_e_commerce/models/product.dart';
import 'package:flutter/material.dart';

import '../components/reviews_container.dart';
import '../themes/text/fonts.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: const Icon(Icons.checkroom),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // PRODUCT INFORMATION
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // product pictures
                        ProductPagePictureContainer(
                          picturePath: widget.product.imagePath,
                        ),

                        const SizedBox(height: 20),

                        // PRODUCT DETAILS
                        // brand, rating, reviews, heart icon
                        Row(
                          children: [
                            // Brand
                            Text(
                              widget.product.brand,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(width: 15),

                            // Reviews
                            ReviewsContainer(product: widget.product),
                          ],
                        ),

                        const SizedBox(height: 5),

                        // Product Name
                        Text(
                          widget.product.name,
                          style: fProductTitleFont(context, 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Product Price
                        Text(
                          '\$${widget.product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),

                        const SizedBox(height: 25),

                        // product description
                        const Text(
                            'This is the description of the current product'),

                        const SizedBox(height: 25),
                      ],
                    )
                  ],
                ),
              ),
              // ACTIONS
              Row(
                children: [
                  // add to cart button
                  Expanded(
                    flex: 1,
                    child: CheckoutButton(
                      color: Theme.of(context).colorScheme.primary,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),

                  const SizedBox(width: 10),

                  // buy product button
                  Expanded(
                    flex: 3,
                    child: CheckoutButton(
                      color: Theme.of(context).colorScheme.tertiary,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Buy product',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
