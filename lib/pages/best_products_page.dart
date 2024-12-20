import 'package:clothes_e_commerce/pages/product_page.dart';
import 'package:flutter/material.dart';

import '../components/product_container.dart';
import '../models/product.dart';
import '../models/product_list.dart';

class BestProductsPage extends StatefulWidget {
  const BestProductsPage({super.key});

  @override
  State<BestProductsPage> createState() => _BestProductsPageState();
}

class _BestProductsPageState extends State<BestProductsPage> {
  late List<Product> products = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      products = ProductList.productList;
    });
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
              return ProductContainer(
                product: products[index],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(product: products[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
