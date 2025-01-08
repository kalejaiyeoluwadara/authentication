// ignore_for_file: prefer_const_constructors

import 'package:authentication/components/my_button.dart';
import 'package:authentication/components/my_textfield.dart';
import 'package:authentication/components/square_tile.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Center(
            child: Icon(
              Icons.lock,
              size: 100,
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Welcome back you\'ve been missed.',
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          SizedBox(height: 25),
          MyTextfield(
            hintText: 'username',
            obscureText: false,
            controller: username_controller,
          ),
          SizedBox(
            height: 10,
          ),
          MyTextfield(
            hintText: 'password',
            obscureText: true,
            controller: password_controller,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 18.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot password'),
              ],
            ),
          ),
          MyButton(
            onTap: () {},
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(
                imagePath: 'assets/images/google.png',
              ),
              SizedBox(width: 10),
              SquareTile(
                imagePath: 'assets/images/apple.png',
              )
            ],
          )
        ],
      ),
    );
  }
}
