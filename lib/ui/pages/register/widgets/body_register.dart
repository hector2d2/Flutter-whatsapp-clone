import 'package:Whatsapp_clone/ui/widgets/container_rounded.dart';
import 'package:Whatsapp_clone/ui/widgets/custom_button.dart';
import 'package:Whatsapp_clone/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyRegister extends StatelessWidget {
  final emailCtrl = new TextEditingController();
  final passCtrl = new TextEditingController();
  final nameCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ContainerRounded(
      children: [
        _inputName(),
        _inputEmail(),
        _inputPassword(),
        _buttonRegister(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  CustomButton _buttonRegister() {
    return CustomButton(
        color: Color(0xFF7972E6),
        borderColor: Color(0xFF7972E6),
        title: 'Sign Up',
        onPress: () {
          print(emailCtrl.text);
        },
      );
  }

  CustomInput _inputPassword() {
    return CustomInput(
        icon: FontAwesomeIcons.lock,
        placeholder: 'Password',
        textController: passCtrl,
        isPassword: true,
      );
  }

  CustomInput _inputEmail() {
    return CustomInput(
        icon: FontAwesomeIcons.envelope,
        placeholder: 'Email',
        keyboardType: TextInputType.emailAddress,
        textController: emailCtrl,
      );
  }

  CustomInput _inputName() {
    return CustomInput(
        icon: FontAwesomeIcons.user,
        placeholder: 'Nombre',
        textController: nameCtrl,
      );
  }
}
