import 'package:flutter/material.dart';

import 'package:Whatsapp_clone/ui/widgets/background.dart';
import 'package:Whatsapp_clone/ui/pages/home/widgets/body_home.dart';
import 'package:Whatsapp_clone/ui/pages/home/widgets/header_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          _backgroundHome(heightScreen),
          _foreGroundHome(),
        ],
      ),
    );
  }

  Widget _backgroundHome(double height) {
    return Background(
      heightContainerUp: height * .5,
      colorPrimary: Color(0xFF7972E6),
      colorSecond: Color(0xFFDFE0E3),
    );
  }

  Widget _foreGroundHome() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          HeaderHome(),
          BodyHome(),
        ],
      ),
    );
  }
}
