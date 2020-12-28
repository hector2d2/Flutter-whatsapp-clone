import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:Whatsapp_clone/widgets/custom_background.dart';
import 'package:Whatsapp_clone/widgets/column_margin.dart';
import 'package:Whatsapp_clone/widgets/container_icon.dart';
import 'package:Whatsapp_clone/widgets/container_rounded.dart';
import 'package:Whatsapp_clone/widgets/custom_button.dart';
import 'package:Whatsapp_clone/widgets/custom_input.dart';
import 'package:Whatsapp_clone/widgets/header_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyBackground(),
          _SignUpForeground(),
        ],
      ),
    );
  }
}

class _SignUpForeground extends StatelessWidget {
  final emailCtrl = new TextEditingController();
  final passCtrl = new TextEditingController();
  final nameCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ColumnMarginSymmetric(
      horizontal: 20,
      vertical: 40,
      children: [
        HeaderLogin(
          text: 'Sign Up',
          iconLeading: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
          childCenter: Hero(
            tag: 'iconHeader',
            child: ContainerIcon(
              height: 55,
              width: 70,
              child: SvgPicture.asset(
                'assets/whatsapp_hd.svg',
              ),
            ),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        ContainerRounded(
          child: Column(
            children: [
              CustomInput(
                icon: FontAwesomeIcons.user,
                placeholder: 'Nombre',
                textController: nameCtrl,
              ),
              CustomInput(
                icon: FontAwesomeIcons.envelope,
                placeholder: 'Email',
                keyboardType: TextInputType.emailAddress,
                textController: emailCtrl,
              ),
              CustomInput(
                icon: FontAwesomeIcons.lock,
                placeholder: 'Password',
                textController: passCtrl,
                isPassword: true,
              ),
              CustomButton(
                color: Color(0xFF7972E6),
                borderColor: Color(0xFF7972E6),
                title: 'Sign Up',
                onPress: () {
                  print(emailCtrl.text);
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}