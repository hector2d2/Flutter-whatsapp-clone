import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final double height;
  final Color colorPrimary;
  final Color colorSecond;

  CustomBackground({
    @required this.height,
    this.colorPrimary = Colors.blueAccent,
    this.colorSecond = Colors.white10,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _ContainerDown(this.colorSecond),
        _ContainerUp(this.height, this.colorPrimary),
      ],
    );
  }
}

class _ContainerDown extends StatelessWidget {
  final Color color;

  _ContainerDown(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
    );
  }
}

class _ContainerUp extends StatelessWidget {
  final double height;
  final Color color;
  _ContainerUp(
    this.height,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}

class MyBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return CustomBackground(
      height: height * .5,
      colorPrimary: Color(0xFF7972E6),
      colorSecond: Color(0xFFDFE0E3),
    );
  }
}
