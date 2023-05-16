import 'package:flutter/material.dart';
import 'package:lootbox/constants.dart';

import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/protection.png",
                height: size.height * 0.25,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const SignInForm(),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: size.height * 0.002,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      height: size.height * 0.002,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialIcon(
                      size: size,
                      press: () {},
                      icon: "assets/images/apple-logo.png"),
                  SocialIcon(
                      size: size,
                      press: () {},
                      icon: "assets/images/google.png"),
                  SocialIcon(
                      size: size,
                      press: () {},
                      icon: "assets/images/facebook.png"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't Have An Account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.size,
    required this.icon,
    required this.press,
  });

  final Size size;
  final String icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(size.width * 0.015),
        padding: const EdgeInsets.all(5),
        height: size.height * 0.14,
        width: size.width * 0.14,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 238, 238), shape: BoxShape.circle),
        child: Image.asset(icon),
      ),
    );
  }
}
