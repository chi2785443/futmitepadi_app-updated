import 'package:flutter/material.dart';
import 'package:futmitepadi/constants.dart';
import 'package:futmitepadi/basic_widgets.dart';
import 'package:email_validator/email_validator.dart';

class Sign_In_Page extends StatefulWidget {
  const Sign_In_Page({super.key});

  @override
  State<Sign_In_Page> createState() => _Sign_In_PageState();
}

class _Sign_In_PageState extends State<Sign_In_Page> {
  final formkey = GlobalKey<FormState>();

  late String email;
  late String password;
  late String faculty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
                    child: Image(
                      image: AssetImage(
                        'images/sign_in.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.center,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Type your email'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (password) =>
                      password != null && password.length < 6
                          ? 'Enter min. 6 characters'
                          : null,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.center,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Create a password'),
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                    onChanged: (value) {
                      faculty = value;
                    },
                    style: const TextStyle(
                        fontFamily: 'worksans', color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: kDecorationTextField.copyWith(
                        hintText: 'Enter faculty')),
              ),
              const SizedBox(height: 2.0),
              Purpleflatbutton(
                title: 'Register',
                onpressed: () {
                  Navigator.pushReplacementNamed(context, 'menu_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
