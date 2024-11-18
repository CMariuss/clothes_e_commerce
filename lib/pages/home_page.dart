import 'package:clothes_e_commerce/components/ad_container.dart';
import 'package:clothes_e_commerce/components/bottom_nav_bar.dart';
import 'package:clothes_e_commerce/components/category_box.dart';
import 'package:clothes_e_commerce/components/product_container.dart';
import 'package:clothes_e_commerce/components/see_all_label.dart';
import 'package:clothes_e_commerce/pages/clothes_list.dart';
import 'package:clothes_e_commerce/pages/notifications_page.dart';
import 'package:clothes_e_commerce/pages/profile_page.dart';
import 'package:clothes_e_commerce/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  void changeNavBar(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  final List<Widget> pages = [
    // shop page
    const ShopPage(),

    // profile page
    const ProfilePage(),

    // notifications page
    const NotificationsPage(),

    // settings page
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        // app logo
        foregroundColor: Colors.grey.shade900,
        leading: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Icon(
            Icons.layers_rounded,
            size: 30,
            color: Colors.blueGrey,
          ),
        ),

        // actions
        actions: [
          // search
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search_page');
            },
            icon: const Icon(CupertinoIcons.search),
          ),

          const SizedBox(width: 8),

          // cart
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: const Icon(Icons.checkroom),
          ),

          const SizedBox(width: 20),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => changeNavBar(index),
      ),
      body: pages[pageIndex],
    );
  }
}