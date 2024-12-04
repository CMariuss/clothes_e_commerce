import 'package:clothes_e_commerce/pages/auth_pages/register_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //
  bool showLoginPage = true;

  // toggle between login and register pages
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onRegisterTap: togglePages);
    } else {
      return RegisterPage(onLoginTap: togglePages);
    }
  }
}
