import 'package:flutter/material.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(7),
      ),
      child: const Center(
        child: Text(
          '\$70.96',
          style: TextStyle(
            // color: Theme.of(context).colorScheme.tertiary,
            color: Colors.deepOrangeAccent,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
