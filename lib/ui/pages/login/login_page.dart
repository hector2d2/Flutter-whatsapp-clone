import 'package:flutter/material.dart';

import 'package:Whatsapp_clone/ui/pages/login/widgets/body_login.dart';
import 'package:Whatsapp_clone/ui/pages/login/widgets/header_login.dart';
import 'package:Whatsapp_clone/ui/widgets/background.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          _backgroundLogin(heightScreen),
          _foreGroundLogin(),
        ],
      ),
    );
  }

  Widget _backgroundLogin(double height) {
    return Background(
      heightContainerUp: height * .5,
      colorPrimary: Color(0xFF7972E6),
      colorSecond: Color(0xFFDFE0E3),
    );
  }

  Widget _foreGroundLogin(){
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HeaderLogin(),
            BodyLogin(),
          ],
        ),
      ),
    );
  }
}
