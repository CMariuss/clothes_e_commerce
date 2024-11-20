import 'package:flutter/material.dart';

import 'category_box.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // physics: const NeverScrollableScrollPhysics(),
        children: const [
          // women
          CategoryBox(
            title: 'Women',
            icon: Icons.woman,
          ),

          SizedBox(width: 20),

          // men
          CategoryBox(
            title: 'Men',
            icon: Icons.man,
          ),

          SizedBox(width: 20),

          // kids
          CategoryBox(
            title: 'Kids',
            icon: Icons.child_care,
          ),

          SizedBox(width: 20),

          // babies
          CategoryBox(
            title: 'Babies',
            icon: Icons.child_friendly_outlined,
          ),

          SizedBox(width: 20),

          // blouses
          CategoryBox(
            title: 'Blouses',
            icon: Icons.crop_square_outlined,
          ),

          SizedBox(width: 20),

          // trousers
          CategoryBox(
            title: 'Trousers',
            icon: Icons.circle_outlined,
          ),
        ],
      ),
    );
  }
}
