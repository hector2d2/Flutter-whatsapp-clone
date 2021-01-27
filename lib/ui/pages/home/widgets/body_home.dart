import 'package:flutter/material.dart';

import 'package:Whatsapp_clone/ui/widgets/container_rounded.dart';
import 'package:Whatsapp_clone/ui/widgets/custom_button.dart';
import 'package:get/get.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerRounded(
      children: [
        _titleBody(),
        _buttonLogin(),
        _buttonRegister(),
      ],
    );
  }

  Widget _titleBody() {
    return Text(
      'Welcome',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Widget _buttonLogin() {
    return CustomButtonLogin(
      onPress: () => Get.toNamed('/login'),
    );
  }

  Widget _buttonRegister() {
    return CustomButton(
      color: Colors.white,
      borderColor: Color(0xFF7972E6),
      title: 'Sign Up',
      colorTitle: Color(0xFF7972E6),
      onPress: () => Get.toNamed('/register'),
    );
  }
}
