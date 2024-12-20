import 'package:clothes_e_commerce/components/checkout_button.dart';
import 'package:clothes_e_commerce/components/total_price_container.dart';
import 'package:flutter/material.dart';

import '../components/saved_product_tile.dart';
import '../models/product.dart';
import '../models/product_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      productList = ProductList.productList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        actions: [
          // title
          const Text(
            '4',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent,
            ),
          ),

          const SizedBox(width: 10),

          // total price
          Text(
            'items',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          const SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            // cart products list
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SavedProductTile(
                      product: productList[index],
                      onDeletePressed: (context) {},
                    ),
                  );
                },
              ),
            ),

            // checkout
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: TotalPriceContainer(),
                    ),

                    const SizedBox(width: 10),

                    // buy button
                    Expanded(
                      flex: 2,
                      child: CheckoutButton(
                        color: Theme.of(context).colorScheme.tertiary,
                        child: const Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
