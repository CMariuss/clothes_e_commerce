import 'package:flutter/material.dart';

import 'category_box.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 130,
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            // women
            CategoryBox(
              title: 'Women',
              icon: Icons.woman,
            ),

            // men
            CategoryBox(
              title: 'Men',
              icon: Icons.man,
            ),

            // kids
            CategoryBox(
              title: 'Kids',
              icon: Icons.child_care,
            ),

            // babies
            CategoryBox(
              title: 'Babies',
              icon: Icons.child_friendly_outlined,
            ),

            // blouses
            CategoryBox(
              title: 'Blouses',
              icon: Icons.crop_square_outlined,
            ),
            //
            // SizedBox(width: 20),
            //
            // // trousers
            // CategoryBox(
            //   title: 'Trousers',
            //   icon: Icons.circle_outlined,
            // ),
          ],
        ),
      ),
    );
  }
}
