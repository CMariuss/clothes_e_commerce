import 'package:flutter/material.dart';

class SeeAllLabel extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const SeeAllLabel({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade800,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            'See all',
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
