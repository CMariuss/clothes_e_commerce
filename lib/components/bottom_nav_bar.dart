import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;

  const BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GNav(
        haptic: false,
        selectedIndex: 0,
        color: Colors.grey.shade400,
        activeColor: Theme.of(context).colorScheme.tertiary,
        duration: const Duration(milliseconds: 100),
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: onTabChange,
        tabs: const [
          GButton(icon: Icons.storefront),
          GButton(icon: Icons.person),
          GButton(icon: Icons.notifications),
          GButton(icon: Icons.favorite),
        ],
      ),
    );
  }
}
