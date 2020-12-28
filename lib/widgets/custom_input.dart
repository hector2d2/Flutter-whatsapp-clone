import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  CustomInput({
    @required this.icon,
    @required this.placeholder,
    @required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xFFEFEFEF),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 5),
              blurRadius: 5,
            ),
          ]),
      child: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Color(0xFF7972E6),
        ),
        child: TextField(
          autocorrect: false,
          keyboardType: this.keyboardType,
          controller: this.textController,
          obscureText: this.isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(
              this.icon,
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            focusColor: Colors.purple,
            hintText: this.placeholder,
          ),
        ),
      ),
    );
  }
}
