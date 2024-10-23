import 'package:flutter/material.dart';
import 'package:futmitepadi/constants.dart';
import 'package:futmitepadi/basic_widgets.dart';

class login_Page extends StatefulWidget {
  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Image(
                  image: AssetImage('images/login_logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.center,
                decoration:
                    kDecorationTextField.copyWith(hintText: 'Enter your email'),
              ),
            ),
            const SizedBox(height: 3.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.center,
                decoration: kDecorationTextField.copyWith(
                    hintText: 'Enter your password'),
              ),
            ),
            const SizedBox(height: 2.0),
            Purpleflatbutton(
                title: 'Log in',
                onpressed: () {
                  Navigator.pushReplacementNamed(context, 'menu_page');
                })
          ],
        ),
      ),
    );
  }
}
