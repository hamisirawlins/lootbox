import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.size,
    required this.text,
    required this.image,
  });

  final Size size;
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "LOOTBOX",
          style: GoogleFonts.montserrat(fontSize: 38, color: kPrimaryColor),
        ),
        Text(text),
        SizedBox(
          height: size.height * 0.1,
        ),
        Image.asset(
          image,
          height: size.height * 0.25,
        )
      ],
    );
  }
}
