import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:Whatsapp_clone/ui/widgets/container_rounded.dart';
import 'package:Whatsapp_clone/ui/widgets/custom_button.dart';
import 'package:Whatsapp_clone/ui/widgets/custom_input.dart';

class BodyLogin extends StatelessWidget {
  final emailCtrl = new TextEditingController();
  final passCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ContainerRounded(
      children: [
        _inputEmail(),
        _inputPassword(),
        SizedBox(
          height: 20,
        ),
        _buttonLogin(),
        SizedBox(
          height: 10,
        ),
        _footerBody()
      ],
    );
  }

  Container _footerBody() {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          'Olvidaste la contraseña?',
          style: TextStyle(
            color: Color(0xFF7972E6),
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }

  Widget _inputEmail() {
    return CustomInput(
      icon: FontAwesomeIcons.envelope,
      placeholder: 'Email',
      keyboardType: TextInputType.emailAddress,
      textController: emailCtrl,
    );
  }

  _inputPassword() {
     return CustomInput(
      icon: FontAwesomeIcons.lock,
      placeholder: 'Password',
      textController: passCtrl,
      isPassword: true,
    );
  }

  _buttonLogin() {
     return CustomButtonLogin(
      onPress: (){},
    );
  }
}
