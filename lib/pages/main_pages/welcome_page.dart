import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class Welcome_Page extends StatelessWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Futmitepadi',
                  style: TextStyle(
                    letterSpacing: 3.0,
                    fontFamily: 'worksansbold',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade800,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Purpleflatbutton(
                  title: 'log in',
                  onpressed: () {
                    Navigator.pushNamed(context, 'login_page');
                  }),
              const SizedBox(
                height: 10.0,
              ),
              Purpleflatbutton(
                  title: 'Register',
                  onpressed: () {
                    Navigator.pushNamed(context, 'sign_in_page');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
