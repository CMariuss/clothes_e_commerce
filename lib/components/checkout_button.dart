import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final Widget child;
  final Color color;

  final Function()? onTap;

  const CheckoutButton({
    super.key,
    required this.child,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
