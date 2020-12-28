import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  ContainerIcon({
    @required this.height,
    @required this.width,
    @required this.child,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Material(
        color: Color(0xFF7972E6),
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
          height: this.height,
          width: this.width,
          padding: EdgeInsets.all(10),
          child: this.child,
        ),
      ),
    );
  }
}
