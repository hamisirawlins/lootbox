import 'package:flutter/material.dart';
import 'package:lootbox/screens/home/components/body.dart';

class HomePageScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: ClipOval(child: Image.asset("assets/images/person.jpg")))
      ],
    );
  }
}
