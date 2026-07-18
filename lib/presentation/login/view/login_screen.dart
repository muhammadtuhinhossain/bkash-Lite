import 'package:bikash_lite_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Image.asset('assets/bkash.png',
                  color: AppColors.primary,
                    height: 50,
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.qr_code, color: AppColors.primary, size: 32,),
                ],
              ),
              SizedBox(height: 32,),
              Text('Login',
              style: TextStyle(fontSize: 24, fontWeight: .w700, color: AppColors.black),
              ),
              Text('to your bkash account',
                style: TextStyle(fontSize: 24, fontWeight: .w300, color: AppColors.black),
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Account Number',
                  labelStyle: TextStyle(fontWeight: .bold),
                  hintText: 'Enter your number',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: InputBorder.none,
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'bkash PIN',
                  labelStyle: TextStyle(fontWeight: .bold),
                  hintText: 'Enter bkash PIN',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: InputBorder.none,
                ),
              ),
              SizedBox(height: 16,),
              RichText(text:
              TextSpan(
                text: 'Forgot Password?',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: .bold,
                  color: AppColors.primary,
                ),
                children: [
                  TextSpan(
                    text: ' Reset',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: .bold,
                      color: AppColors.primary,
                    ),

                  )
                ]
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
