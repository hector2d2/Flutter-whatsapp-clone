import 'package:flutter/material.dart';

class ContainerRounded extends StatelessWidget {
  final List<Widget> children;

  ContainerRounded({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: this.children,
            )),
      ),
    );
  }
}
