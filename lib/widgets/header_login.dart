import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  final Widget iconLeading;
  final Function onPressed;
  final Widget childCenter;
  final String text;

  const HeaderLogin({
    @required this.iconLeading,
    @required this.onPressed,
    @required this.childCenter,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: this.iconLeading,
              onPressed: this.onPressed,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(
                    right: 40,
                  ),
                  child: this.childCenter,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
