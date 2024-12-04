import 'package:clothes_e_commerce/pages/home_page.dart';
import 'package:clothes_e_commerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../../components/auth/auth_text_field.dart';
import '../../components/bottom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // app logo
              Icon(
                Icons.layers_rounded,
                size: 120,
                color: Theme.of(context).colorScheme.tertiary,
              ),

              const SizedBox(height: 30),

              // welcome text
              Text(
                'Hey welcome back!',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),

              const SizedBox(height: 50),

              // email text field
              AuthTextField(
                isHidden: false,
                controller: emailTextController,
                hintText: 'email . .',
              ),

              const SizedBox(height: 20),

              // password text field
              AuthTextField(
                isHidden: true,
                controller: passwordTextController,
                hintText: 'password . .',
              ),

              const SizedBox(height: 20),

              // login button
              BottomButton(
                text: 'Login',
                color: Theme.of(context).colorScheme.tertiary,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 40),

              // not a member text + register button (go to register page)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),

                  const SizedBox(width: 5),

                  // button
                  GestureDetector(
                    // go to register page on user tap
                    onTap: () {},
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
