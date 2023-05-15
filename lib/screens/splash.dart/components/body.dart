import 'package:flutter/material.dart';
import 'package:lootbox/constants.dart';

import 'splash_content.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"image": "assets/images/team.png", "text": "I Am Because We Are"},
    {"image": "assets/images/collaboration.png", "text": "I Am Because We Are"},
    {"image": "assets/images/audience.png", "text": "I Am Because We Are"}
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: ((context, index) => SplashContent(
                      size: size,
                      image: splashData[index]["image"].toString(),
                      text: splashData[index]["text"].toString(),
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(children: <Widget>[
                SizedBox(height: size.height * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(splashData.length,
                      (index) => buildDot(size: size, index: index)),
                ),
                SizedBox(height: size.height * 0.1),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required Size size, required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: size.height * 0.006,
      width: currentPage == index ? size.height * 0.02 : size.width * 0.015,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
