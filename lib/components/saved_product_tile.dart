import 'package:clothes_e_commerce/components/reviews_container.dart';
import 'package:clothes_e_commerce/models/product.dart';
import 'package:clothes_e_commerce/themes/text/fonts.dart';
import 'package:flutter/material.dart';

class SavedProductTile extends StatelessWidget {
  final List<Product> productList;

  const SavedProductTile({
    super.key,
    required this.productList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/men/jacket_men_01.png'),
        ),
        title: Text(
          productList.first.name,
          style: fProductTitleFont(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: ReviewsContainer(product: productList.first),
        trailing: Text(
          '\$${productList.first.price}',
          style: fProductPriceFont(context),
        ),
      ),
    );
  }
}
