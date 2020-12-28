import 'package:flutter/material.dart';

class ContainerRounded extends StatelessWidget {

  final Widget child;

  ContainerRounded({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(20),
          child: this.child,
        ),
      ),
    );
  }
}