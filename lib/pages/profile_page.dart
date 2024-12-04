import 'package:clothes_e_commerce/pages/auth_pages/auth_page.dart';
import 'package:clothes_e_commerce/pages/auth_pages/login_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AuthPage(),
            ),
          );
        },
        child: const Text('LOGIN'),
      ),
    );
  }
}
