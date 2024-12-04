import 'package:clothes_e_commerce/components/custom_slidable.dart';
import 'package:clothes_e_commerce/components/reviews_container.dart';
import 'package:clothes_e_commerce/models/product.dart';
import 'package:clothes_e_commerce/themes/text/fonts.dart';
import 'package:flutter/material.dart';

class SavedProductTile extends StatelessWidget {
  final Product product;
  final Function(BuildContext)? onDeletePressed;

  const SavedProductTile({
    super.key,
    required this.product,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSlidable(
      onDeletePressed: onDeletePressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(product.imagePath),
          ),
          title: Text(
            product.name,
            style: fProductTitleFont(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: ReviewsContainer(product: product),
          trailing: Text(
            '\$${product.price}',
            style: fProductPriceFont(
              context,
              Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
      ),
    );
  }
}
