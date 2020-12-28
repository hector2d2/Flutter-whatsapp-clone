import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:Whatsapp_clone/widgets/column_margin.dart';
import 'package:Whatsapp_clone/widgets/container_rounded.dart';
import 'package:Whatsapp_clone/widgets/container_icon.dart';
import 'package:Whatsapp_clone/widgets/custom_background.dart';
import 'package:Whatsapp_clone/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyBackground(),
          _LoginForeground(),
        ],
      ),
    );
  }
}

class _LoginForeground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColumnMarginSymmetric(
      horizontal: 20,
      children: [
        SizedBox(
          height: 80,
        ),
        Hero(
          tag: 'iconHeader',
          child: ContainerIcon(
            height: 120,
            width: 120,
            child: SvgPicture.asset(
              'assets/whatsapp_hd.svg',
            ),
          ),
        ),
        Text(
          'Whatsapp Clone',
          style: TextStyle(
            color: Color(0xFFDFE0E3),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ContainerRounded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                ),
              ),
              CustomButton(
                color: Color(0xFF7972E6),
                borderColor: Color(0xFF7972E6),
                title: 'Sign In',
                onPress: () => Get.toNamed('/signin'),
              ),
              CustomButton(
                color: Colors.white,
                borderColor: Color(0xFF7972E6),
                title: 'Sign Up',
                colorTitle: Color(0xFF7972E6),
                onPress: () => Get.toNamed('/signup'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
