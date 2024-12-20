import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth_operations/auth_cubit.dart';
import '../../components/auth/auth_text_field.dart';
import '../../components/bottom_button.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onLoginTap;

  const RegisterPage({
    super.key,
    required this.onLoginTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final repeatPasswordTextController = TextEditingController();

  // on register button tap
  void register() {
    // prepare the register information
    final String name = nameTextController.text;
    final String email = emailTextController.text;
    final String password = passwordTextController.text;
    final String repeatedPassword = repeatPasswordTextController.text;

    // initialize auth cubit
    final authCubit = context.read<AuthCubit>();

    // ensure that all field aren't empty
    if (name.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        repeatedPassword.isNotEmpty) {
      // ensure that both password match
      if (password == repeatedPassword) {
        // register a new user
        authCubit.register(name, email, password);
      }

      // if passwords don't match display an snack bar message
      else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Passwords don\'t match'),
          ),
        );
      }
    }
    // if some fields are empty then display an error
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill both the email and password text fields'),
        ),
      );
    }
  }

  @override
  void dispose() {
    nameTextController.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
    repeatPasswordTextController.dispose();

    super.dispose();
  }

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

              const SizedBox(height: 35),

              // welcome text
              Text(
                'Let\'s create an account!',
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),

              const SizedBox(height: 35),

              // name text field
              AuthTextField(
                isHidden: false,
                controller: nameTextController,
                hintText: 'your name . .',
              ),

              const SizedBox(height: 20),

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

              // password text field
              AuthTextField(
                isHidden: true,
                controller: repeatPasswordTextController,
                hintText: 'repeat password . .',
              ),

              const SizedBox(height: 30),

              // login button
              BottomButton(
                text: 'Register',
                color: Theme.of(context).colorScheme.tertiary,
                onTap: register,
              ),

              const SizedBox(height: 40),

              // not a member text + register button (go to register page)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),

                  const SizedBox(width: 5),

                  // button
                  GestureDetector(
                    // go to login page on user tap
                    onTap: widget.onLoginTap,
                    child: Text(
                      'Login here',
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
