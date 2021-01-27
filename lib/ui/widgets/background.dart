import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final double heightContainerUp;
  final Color colorPrimary;
  final Color colorSecond;

  Background({
    @required this.heightContainerUp,
    this.colorPrimary = Colors.blueAccent,
    this.colorSecond = Colors.white10,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _ContainerDown(this.colorSecond),
        _ContainerUp(this.heightContainerUp, this.colorPrimary),
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


