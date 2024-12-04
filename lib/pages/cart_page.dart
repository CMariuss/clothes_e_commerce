import 'package:clothes_e_commerce/components/buy_button.dart';
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
        foregroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        // title: const Text('Cart'),
        actions: [
          // title
          Text(
            'Total: ',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // total price
          Text(
            '\$70.96',
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
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    // buy button
                    const BuyButton(),
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
