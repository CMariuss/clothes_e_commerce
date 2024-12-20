import 'package:clothes_e_commerce/pages/best_products_page.dart';
import 'package:clothes_e_commerce/pages/cart_page.dart';
import 'package:clothes_e_commerce/pages/categories_page.dart';
import 'package:clothes_e_commerce/pages/company_page.dart';
import 'package:clothes_e_commerce/pages/explore_page.dart';
import 'package:clothes_e_commerce/pages/favorites_page.dart';
import 'package:clothes_e_commerce/pages/home_page.dart';
import 'package:clothes_e_commerce/pages/settings_page.dart';
import 'package:clothes_e_commerce/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_operations/auth_cubit.dart';
import 'auth_operations/firebase_auth_repo.dart';
import 'auth_operations/firebase_profile_repo.dart';
import 'auth_operations/profile_cubit.dart';

class ECommerceApp extends StatelessWidget {
  // get the auth repository
  final authRepo = FirebaseAuthRepo();

  // get the profile repository
  final profileRepo = FirebaseProfileRepo();

  ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // auth cubit
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(authRepo: authRepo)..checkAuth(),
        ),

        // profile cubit
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(profileRepo: profileRepo),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: lightMode,
        routes: {
          '/company_page': (context) => const CompanyPage(),
          '/products_page': (context) => const BestProductsPage(),
          '/categories_page': (context) => const CategoriesPage(),
          '/search_page': (context) => const ExplorePage(),
          '/cart_page': (context) => const CartPage(),
          '/settings_page': (context) => const SettingsPage(),
        },
      ),
    );
  }
}
