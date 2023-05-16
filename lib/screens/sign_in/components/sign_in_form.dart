import 'package:flutter/material.dart';
import 'package:lootbox/screens/home/home_screen.dart';

import '../../../constants.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email Account",
                hintText: "Enter your email account",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.person_2_outlined, color: Colors.grey[600]),
                )),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Password",
                hintText: "Enter your password",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child:
                      Icon(Icons.lock_open_outlined, color: Colors.grey[600]),
                )),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, HomePageScreen.routeName, (r) => false);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
