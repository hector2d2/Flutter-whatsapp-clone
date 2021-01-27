import 'package:Whatsapp_clone/ui/pages/register/widgets/body_register.dart';
import 'package:Whatsapp_clone/ui/pages/register/widgets/header_register.dart';
import 'package:Whatsapp_clone/ui/widgets/background.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          _backgroundRegister(heightScreen),
          _foregroundRegister(),
        ],
      ),
    );
  }

  Widget _backgroundRegister(double height) {
    return Background(
      heightContainerUp: height * .5,
      colorPrimary: Color(0xFF7972E6),
      colorSecond: Color(0xFFDFE0E3),
    );
  }

  Widget _foregroundRegister() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderRegister(),
            BodyRegister(),
          ],
        ),
      ),
    );
  }
}
