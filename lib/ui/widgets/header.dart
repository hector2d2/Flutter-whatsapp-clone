import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget iconLeading;
  final Function onPressed;
  final Widget childCenter;

  const Header({
    @required this.iconLeading,
    @required this.onPressed,
    @required this.childCenter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
