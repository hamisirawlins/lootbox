import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/pyramids.jpg",
          height: size.height * 0.33,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
